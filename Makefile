README.md: guessinggame.sh 
	echo "Title : Coursera_assignement" > README.md
	echo -n  "The number of line : " >> README.md && wc -l guessinggame.sh | cut -d " " -f1  >> README.md 
	echo -n "The date witch make command is run " >> README.md && date >> README.md 
clean: README.md
	rm README.md