#ifndef LIB_USB_H
#define LIB_USB_H

// Initialise the usb
void usb_init(void);

// Bootload handler
void usb_bootload(void);

// Poll USB
void USBPollingService(void);

#endif //LIB_USB_H
