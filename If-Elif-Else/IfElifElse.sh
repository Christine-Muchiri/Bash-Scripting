#!/bin/bash

if [ ${1,,} = christine ]; then
	echo "Oh, you are the boss here"
elif [ ${1,,} = help ]; then
	echo "Just enter your username, duh!"
else
	echo "I dont know who you are. But you are not the boss of me!"
fi
