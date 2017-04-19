# seusb2
Authorizing USB input devices

About
-----
Security Enhanced USB 2 is the second approach to securing USB devices. The first approaach is based on usbmon and 
tries to detect changes in the firmware. It is not yet on Github.

This shell script package using udev is for authorizing USB input devices. Newly connected devices are disabled until a user 
(of the group seusb2) authorizes its use in a pop-up dialogue. In order to avoid lockouts authorization can also be done by 
pressing  the power button. This feature requires acpid.

WARNING: Most USB input devices, like keyboards or mouses, come without a distinguished serial number. So, authorization is based on vendor 
and product id, allowing attackers to spoof these data to match already authorized devices.

Dependencies
------------
* udev
* inotify-tools
* zenity
* bash (>= 3.2)
* adduser
* acpid
