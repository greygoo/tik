#!/bin/sh

cenity="../cenity"
. $cenity

RESULT=1

z_result="$(zenity --question --text="This is a question. Select Yes" --title="This is a QUESTION")" ; z_retval=$?
cenity c_result --question --text="This is a question. Select Yes" --title="This is a QUESTION" ; c_retval=$?
echo "[cenity][${c_retval}][${c_result}]"
echo "[zenity][${z_retval}][${z_result}]"

if [[ ${c_retval} = ${z_retval} ]] && [[ ${c_result} = ${z_result} ]]; then
  RESULT=0
fi

echo "Result: $RESULT"

