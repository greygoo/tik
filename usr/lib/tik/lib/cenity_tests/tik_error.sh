#!/bin/sh

. ./tik_functions_test

d_test --error --no-wrap --title="Installation Failed" --text="Please file a bug report at <tt>${TIK_BUG_URL}</tt>\n\nPlease include the <tt>tik.log</tt> file\nIt can be found on the IGNITION partition on this USB Stick\n\n<b>System is shutting down</b>"
