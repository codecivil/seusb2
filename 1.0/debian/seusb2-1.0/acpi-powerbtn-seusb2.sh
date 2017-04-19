#!/bin/bash
# acpi-powerbtn-seusb2.sh
#

# read config
. /etc/seusb2/seusb2.conf

function _confirm() {
	FILENAME="$1"
	###add allow udev rule
	echo "seusb2_allow=true" >> $MSGDIR/$FILENAME
	zenity --notification --title="${MSG['TITLE',$MSGLANG]}" --text="${MSG['REATTACH',$MSGLANG]}"
}

#process the queue
for _FILE in $(ls $MSGDIR); do _confirm $_FILE; done

# close the dialogues
pkill zenity
