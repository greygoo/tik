#!/bin/sh

RESULT=0

for test in t_*; do
  ./${test} || RESULT=1
done

echo "All tests result: $RESULT"
exit $RESULT
