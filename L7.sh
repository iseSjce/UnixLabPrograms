echo "Enter your choice: \n 1. ps \n 2. SHELL \n 3. who \n 4. whoami \n 5. date \n 6. USER \n 7. pwd \n"
read choice;
case $choice in
	1) ps;;
	2) $SHELL;;
	3) who;;
	4) whoami;;
	5) $date;;
	6) $USER;;
	7) pwd;;
	*) echo "Invalid input";;
esac
