#!/bin/bash
if [ $PROCESS_MODE == "main" ]
then
	cd /usr/bin
	python3 /main.py
else
	cd /usr/bin
	python3 /alternate_main.py
fi