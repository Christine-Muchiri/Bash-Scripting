#!/bin/bash

case ${1,,} in
	christine | administrator)
		echo "Hello,boss"
		;;
	help)
		echo "just eneter your name"
		;;
	*)
		echo "hello not the boss of me"
esac
