#!/bin/sh

. ./tik_functions_test

d_test --list --column=Disk --column=Size --column=Partitions --column=Filesystems --width=1050 --height=340 --title="Select A Disk" --text="Select the disk to install the operating system to. <b>Make sure any important documents and files have been backed up.</b>\n" ${list_items}

d_test --list --column=Image --column=Size --title="Select A Image" --text="Select the operating system image to install.\n" ${list_items}
