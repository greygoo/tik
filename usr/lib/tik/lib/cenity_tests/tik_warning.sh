#!/bin/sh

. ./tik_functions_test

d_test --warning --no-wrap --title="AC Power Recommended" --text="Runnning on battery power detected\n\nIt is recommended to connect the system to AC power during the install"

d_test --width=600 --warning --icon=security-low-symbolic --text="${postamble}"

d_test --width=600 --warning --icon=security-medium-symbolic --text="${preamble}\n\nReason: ${reason}\n\n${postamble}"
