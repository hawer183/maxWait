#!/bin/bash

OLD="\"maxWait\"\ :\ 150000,"
NEW="\"maxWait\"\ :\ 5,"
LOG="/root/LOG.txt"

if [ ! -e "$LOG" ]; then
	touch "$LOG"
fi

echo $(date) >> $LOG

for i in /opt/openidm/conf/provisioner.*; do
	if grep -w "$OLD" "$i"; then
		echo $i >> $LOG
	fi
done

echo --- >> $LOG
sed -i "s/$OLD/$NEW/g" /opt/openidm/conf/provisioner.*

