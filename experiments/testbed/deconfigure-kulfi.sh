#!/bin/bash
. colors.sh
dsh -M -g atlas-abilene -c "pkill -fx \"python.*agent.py\" ; sudo rmmod modkulfi 2> /dev/null ; "
# Verify modkulfi is loaded on all servers
MOD=`dsh -M -g atlas-abilene -c "sudo lsmod | grep kulfi " | wc -l`

echo "modkulfi loaded on $MOD hosts."
if [ "$MOD" -eq 0 ]
then
	echo ${GREEN}SUCCESS${RESTORE}
else
	echo ${RED}FAIL${RESTORE}
fi