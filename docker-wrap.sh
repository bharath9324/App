#!/bin/bash
if [ "$1" == "build" ]; then
	docker build --tag django-image .
elif [ "$1" == "prune" ]; then
	docker system prune -a
elif [ "$1" == "run" ]; then
	docker run -it -d -p 8000:8000 -v ~/.gitconfig:/etc/gitconfig --name dev django-image /bin/bash git config --list
elif [ "$1" == "attach"	 ]; then
	docker attach dev
else
	printf "Valid arguments are \n build\n prune\n run\n attach\n"
fi
