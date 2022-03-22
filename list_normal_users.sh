#!/bin/bash

cat /etc/passwd | while read line 
do
	USER_LIST=$(echo $line | awk -F: '{print $1}')
	UID_LIST=$(echo $line | awk -F: '{print $3}')

	if [[ ($UID_LIST -gt 999) || ($UID_LIST -eq 0) ]]
	then
		 printf '%s\n' "$USER_LIST $UID_LIST"
	fi
done
