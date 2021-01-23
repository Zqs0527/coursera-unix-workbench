README.md: guessinggame.sh
	echo "## Guessing Game To Find Number Of Files" > README.md
	echo "Current time: " >> README.md
	date +"%Y-%m-%d %H:%M:%S" >> README.md
	echo "The number of lines in guessinggame.sh >> README.md
	cat guessinggame.sh | wc -l >> README.md
