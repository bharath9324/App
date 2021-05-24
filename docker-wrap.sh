#!/bin/bash
if [ "$1" == "build" ]; then
	docker build --tag django-image .
elif [ "$1" == "prune" ]; then
	docker system prune -a
else
	printf "Valid arguments are \n build\n prune\n"
fi
