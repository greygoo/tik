#!/bin/sh

cenity="../cenity"
. $cenity

RESULT=1

z_result="$(zenity --warning --text="This is a warning text" --title="WARNING TITLE")" ; z_retval=$?
cenity c_result --warning --text="This is a warning text" --title="WARNING TITLE" ; c_retval=$?
echo "[cenity][${c_retval}][${c_result}] $c_p"
echo "[zenity][${z_retval}][${z_result}] $z_p"

if [[ ${c_retval} = ${z_retval} ]] && [[ ${c_result} = ${z_result} ]]; then
  RESULT=0
fi

echo "Result: $RESULT"

