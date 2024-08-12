#!/bin/sh

cenity="../cenity"
. $cenity

RESULT=1

z_result="$(zenity --list --title="This is a list text" \
	           --column="First column" --column="Second column" --column="Third column" \
		   "First Line" "1 2" "1 3" \
		   "Second Line" "2 2" "2 3" \
		   "Third Line" "3 2" "3 3" \
		   "Fourth Line" "4 2" "4 3")" ; z_retval=$?
cenity c_result --list --title="This is a list text" \
           --column="First column" --column="Second column" --column="Third column" \
   	   "First Line" "1 2" "1 3" \
           "Second Line" "2 2" "2 3" \
           "Third Line" "3 2" "3 3" \
	   "Fourth Line" "4 2" "4 3" ; c_retval=$?

echo "[cenity][${c_retval}][${c_result}]"
echo "[zenity][${z_retval}][${z_result}]"

if [[ ${c_retval} = ${z_retval} ]] && [[ ${c_result} = ${z_result} ]]; then
  RESULT=0
fi

echo "Result: $RESULT"

