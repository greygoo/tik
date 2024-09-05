#!/bin/sh

. ./tik_functions_test

d_test --info --ok-label="Install Now" --no-wrap --width=300 --height=300 --icon=distributor-logo-Aeon-symbolic --title="" --text="<big>Welcome to ${TIK_OS_NAME}</big>\n\nPlease press <b>Install Now</b> to continue"


d_test --timeout 5 --info --no-wrap --text="<b>Test Succeeded:</b>\n\nHave a nice day!"

d_test --timeout 5 --info --no-wrap --title="Installation Complete!" --text="${TIK_OS_NAME} has been installed.\n\n<b>System is rebooting</b>"

d_test --width=500 --height=500 --no-wrap --warning --icon=security-high-symbolic --title="Encryption Recovery Key" --text="${message}You may optionally scan the recovery key off screen:\n<span face='monospace'>$(qrencode ${key} -t UTF8i)</span>\nFor more information please visit <tt>https://aeondesktop.org/encrypt</tt>"

d_test --width=500 --height=300 --no-wrap --warning --icon=security-high-symbolic --title="Set Encryption Passphrase" --text="This ${TIK_OS_NAME} system is encrypted and will require a Passphrase on every boot\n\nYou will be prompted to set the Passphrase on the next screen\n\nFor more information please visit <tt>https://aeondesktop.org/encrypt</tt>"

d_test --info --width=300 --height=300 --icon=distributor-logo-Aeon-symbolic  --no-wrap --title="Message from the Aeon Team" --text="We'd like to thank you for adopting openSUSE Aeon so early in it's development,\nbefore we fully understood what we were building or how we wanted it to look\n\nWe are sorry that you need to reinstall your system\n\nThank you so much for your support.\nWe hope you enjoy the new look openSUSE Aeon"
