README.md: guessinggame.sh
	echo "# Project Title: Guessing Game" > README.md
	echo "" >> README.md
	echo "**Make date**: " >> README.md
	date >> README.md
	echo "" >> README.md
	echo "**Number of lines in guessinggame.sh:** " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
