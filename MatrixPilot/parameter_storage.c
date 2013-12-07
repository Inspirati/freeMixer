

#include "defines.h"
#include <stdlib.h>
#include "FreeRTOS.h"
#include "task.h"


#include "parameter_storage.h"
#include "parameter_scaling.h"

#if (WIN == 1)
#include "../libFlashFS/minGlue.h"
#else
#include "../libFlashFS/minGlue-mdd.h"
#endif
#include <string.h>


uint16_t parstore_section_index;

static void parstore_load(uint16_t load_flags);
static void parstore_save(uint16_t save_flags);
static void parstore_defaultS(void);

void parstore_load_section(struct param_section_s*    psect);
void parstore_save_section(struct param_section_s*    psect);


void (*store_callback)(boolean)  = NULL;

#define usbPARAM_STORE_STACK_SIZE   500


/* The task function */
static portTASK_FUNCTION_PROTO( vParamStorageTask, pvParameters );


void vStartParamStorageTask( unsigned portBASE_TYPE uxPriority )
{
    xTaskCreate( vParamStorageTask, ( signed char * ) "PRMSTOR", usbPARAM_STORE_STACK_SIZE, NULL, uxPriority, ( xTaskHandle * ) NULL );
}

static portTASK_FUNCTION( vParamStorageTask, pvParameters )
{
    /* Just to stop compiler warnings. */
    ( void ) pvParameters;

    // Pause 100ms at the start, just to let the system settle
    vTaskDelay( 100 / portTICK_RATE_MS );

    // Load all data
    parstore_load(0);

    for( ;; )
    {
        vTaskDelay( 500 / portTICK_RATE_MS );
    }

}


void parstore_load(uint16_t load_flags)
{
    uint16_t maxsecs = get_section_count();
    struct param_section_s*    psect;
    uint16_t section;

    for(section = 0; section < maxsecs; section++)
    {
        psect = get_section(section);
        parstore_load_section(psect);

        vTaskDelay( 10 / portTICK_RATE_MS );
    }

    if(store_callback != NULL)
    {
        store_callback(true);
        store_callback = NULL;
    }
};

// load parameters from storage
void parstore_load_section(struct param_section_s*    psect)
{
    struct param_info_s*        pparam;
    mavlink_param_union_t       param;
    char                        paramstr[64];       // Line read buffer
    char *                      pch;                //
    INI_FILETYPE                file;
    uint16_t maxparms = get_param_count();
    uint16_t paramcount = 0;
    uint16_t param_index;

//    strcpy(filename, psect->name);
    sprintf(paramstr, "%s.PAR",  psect->name);
    ini_openread(paramstr, &file);

    // TODO add load flag control
    // TODO add parameter storage checking of parameter sequence
    // TODO add parameter storage version checking

    // For each file in the line find the parameter and laod it.
    while(ini_read(paramstr, sizeof(paramstr), &file) != 0)
    {
        // Find the parameter name and parameter
        pch = strtok (paramstr," ");
        if( pch != NULL )
        {
            // find the parameter for the string and check it is valid
            param_index = get_param_handle(pch);
            if(param_index != INVALID_PARAMETER_HANDLE)
            {
                float tempfloat;
                pparam = get_param(param_index);

                // Find the parameter value and parse it
                pch = strtok (NULL, " ");
                if( pch != NULL )
                {
                    param.type = get_param_mavlink_type(pparam);
                    switch(param.type)
                    {
                        case MAVLINK_TYPE_UINT32_T:
                            sscanf(pch, "%ld", &param.param_uint32);
                            if(param_scale_write(param, pparam) == true)
                                paramcount++;
                            break;
                        case MAVLINK_TYPE_INT32_T:
                            sscanf(pch, "%ld", &param.param_int32);
                            if(param_scale_write(param, pparam) == true)
                                paramcount++;
                            break;
                        case MAVLINK_TYPE_FLOAT:
                            sscanf(pch, "%f", &param.param_float);
                            if(param_scale_write(param, pparam) == true)
                                paramcount++;
                           break;
                        case MAVLINK_TYPE_UINT16_T:
                        case MAVLINK_TYPE_INT16_T:
                        default:
                            break;
                    }

                }
            }
        }

    }

    ini_close(&file);

    // If the number of correctly reloaded parameters is correct then run the callback
    if(psect->ploadCallback != NULL)
           psect->ploadCallback( paramcount == get_section_params_count(parstore_section_index) );

}

// save parameters to storage
void parstore_save(uint16_t save_flags)
{
    struct param_section_s*    psect;
    uint16_t maxsecs = get_section_count();
    uint16_t section;

    for(section = 0; section < maxsecs; section++)
    {
        psect = get_section(section);
        parstore_save_section(psect);

        if(store_callback != NULL)
        {
            store_callback(true);
            store_callback = NULL;
        }

        vTaskDelay( 10 / portTICK_RATE_MS );
    }

    if(store_callback != NULL)
    {
        store_callback(true);
        store_callback = NULL;
    }
}


// save parameters to storage
// Runs at low priority with callback
void parstore_save_section(struct param_section_s* psect)
{
    struct param_info_s*       pparam;
    mavlink_param_union_t       param;
    char                paramstr[64];
    INI_FILETYPE        file;
    uint16_t maxparms = get_param_count();

    uint16_t parstore_param_index;
//    strcpy(filename, psect->name);
    sprintf(paramstr, "%s.PAR",  psect->name);
    ini_openwrite(paramstr, &file);

    // TODO add save flag control

    // Iterate through the parameter list looking for params belonging to the
    // group.  When one is found, save it to the file.
    while(parstore_param_index < maxparms)
    {
        pparam = get_param(parstore_param_index);

        // Compare name of section and the name of the parameter
        sprintf(paramstr, "%s_",  psect->name);
        
        if ( strncmp(pparam->name, paramstr, strlen(paramstr) ) == 0)
        {

            strcpy(paramstr, pparam->name);
            ini_write(paramstr, &file);
            ini_write(" ", &file);
            param = param_scale_read(pparam);

            switch(param.type)
            {
                case MAVLINK_TYPE_UINT32_T:
                    sprintf(paramstr, "%ld", param.param_uint32);
                    break;
                case MAVLINK_TYPE_INT32_T:
                    sprintf(paramstr, "%ld", param.param_int32);
                    break;
                case MAVLINK_TYPE_FLOAT:
                    sprintf(paramstr, "%f", param.param_float);
                   break;
                case MAVLINK_TYPE_UINT16_T:
                case MAVLINK_TYPE_INT16_T:
                default:
                    strcpy(paramstr, "Unsupported type");
                    break;
            }

            ini_write(paramstr, &file);
            ini_write("\r\n", &file);
        }
        parstore_param_index++;
    }

    ini_close(&file);

}

// save parameters to storage
boolean save_parameters(uint16_t flags, void (*callback) (boolean) )
{
        return false;
}

// load parameters from storage
boolean load_parameters(uint16_t flags, void (*callback) (boolean) )
{
        return false;
}

// Set all parameters to default value
void set_parameter_defaults()
{
    struct param_info_s*       pparam;
    mavlink_param_union_t       param;

    const uint16_t maxparms = get_param_count();
    uint16_t param_index;

    for(param_index = 0; param_index < maxparms; param_index++)
    {
        pparam = get_param(param_index);
        param.type = get_param_mavlink_type(pparam);
        param.param_float = pparam->default_val.param_float;
        param_scale_write(param, pparam);
    }
}



