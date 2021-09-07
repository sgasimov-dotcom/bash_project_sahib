#! /bin/bash
#  Author: Sahib Gasimov
#  Date Created: 9/5/21
#  Last Modified: 9/5/21
#  Description: Backup of my tmp dir
#  Usage: our first script

echo "Hello, ${USER^}"
echo " I will now back up your home directory, $HOME"
currentdir=$(pwd)
echo "You are running this script from $currentdir"
tar -cf $currentdir/my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar $HOME/* 2>/dev/null
echo "Backup Completed Successfully"

x=$HOME
y=$USER

echo $(( 2 + $HOME ))

exit 0