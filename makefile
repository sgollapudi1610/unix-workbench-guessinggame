README.md: guessinggame.sh
	touch README.md
	echo " # guessinggame.sh" > README.md
	echo "**Date/time of last run:** $$(date)" >> README.md
	echo "**Number of lines in guessinggame.sh:** $$(cat guessinggame.sh | wc -l)" >> README.md
