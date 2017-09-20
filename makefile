readme.md:
	touch readme.md

readme.md:
	echo "# Guessing Game Project" > readme.md
	echo "## The file guessinggame.sh contains $(shell wc -l guessinggame.sh | egrep -o [0-9]+) lines of code" >> readme.md
	date >> readme.md
