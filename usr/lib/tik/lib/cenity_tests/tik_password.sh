#!/bin/sh

. ./tik_functions_test

retval=0
#key="$(zenity --password --title='Set Encryption Passphrase')" || retval=$?
#cenity key --password --text="This is a password text" --title="This is a PASSWORD" ; c_retval=$?
cenity key --password --title="Set Encryption Passphrase" || retval=$?
case $retval in
    0)
        echo "Key: ${key}"
    ;;
    1|255)
        d --question --text="Do you really want to quit?" && exit 1
    ;;
esac
