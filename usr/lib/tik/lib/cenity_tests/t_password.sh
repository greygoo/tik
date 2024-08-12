#!/bin/sh

cenity="../cenity"
. $cenity

RESULT=1

z_result="$(zenity --password --text="This is a password text" --title="This is a PASSWORD")" ; z_retval=$?
cenity c_result --password --text="This is a password text" --title="This is a PASSWORD" ; c_retval=$?
echo "[cenity][${c_retval}][${c_result}]"
echo "[zenity][${z_retval}][${z_result}]"

if [[ ${c_retval} = ${z_retval} ]] && [[ ${c_result} = ${z_result} ]]; then
  RESULT=0
fi

echo "Result: $RESULT"

