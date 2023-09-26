#!/bin/bash
release_file=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/update_errors.log

check_exit_status() {
	if [ $? -ne 0 ]
	then
		echo "An error occured,please check the $errorlog file."
	fi
}

if grep -q "Arch" $release_file
then
	sudo pacman -Syu1>>$logfile 2>>$errorlog
	check_exit_status

if grep -q "Ubuntu" $release_file
then
	sudo apt update
	sudo apt dist-upgrade
fi
