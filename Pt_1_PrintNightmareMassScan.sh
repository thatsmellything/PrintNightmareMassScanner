#!/bin/bash

echo "Go through setup?(y/n): "
read uservar
#read -p 'Go through setup?(y/n): ' uservar

if [[ "$uservar" == "y" ]]; then
	rm -rf ItWasAllADream/
	echo "Gonna run through setup"
	git clone https://github.com/byt3bl33d3r/ItWasAllADream
	sudo apt update
	sudo apt install python3-pip
	curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
	pip install --user poetry;

else
	cd ItWasAllADream && poetry install && poetry shell
	
fi




