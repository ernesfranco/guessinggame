all: README.md

README.md: guessinggame.sh
	echo "Title of the project: Bash, Make, Git, and GitHub" > README.md
	echo "Date and time at which make was run: $(shell date)" >> README.md
	echo "Number of lines of code contained in guessinggame.sh: $(shell cat guessinggame.sh | wc -l | sed -e 's/^[ \t]*//')" >> README.md
