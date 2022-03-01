#!/bin/sh
for i in $(cat $1)
do
  qpdf --no-warn --password="$i" --decrypt $2 $3

  exit_status=$?

  if [ $exit_status = 3 ] || [ $exit_status = 0 ]; then

    echo "FINISHED, used Password: $i\n"

    exit $exit_status;
  fi
done
