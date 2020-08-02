all: README.md

README.md: guessinggame.sh
	echo "<br />Title of the project: Bash, Make, Git, and GitHub<br />" > README.md
	echo "<br />Date and time at which make was run: $(shell date)<br />" >> README.md
	echo "<br />Number of lines of code contained in guessinggame.sh: $(shell cat guessinggame.sh | wc -l | sed -e 's/^[ \t]*//')<br />" >> README.md
