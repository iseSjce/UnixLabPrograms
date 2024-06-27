while read line
do
	echo $line > tempo
	v=$(cut -d ' ' -f 5 tempo)
	emp=$(cut -d ' ' -f 2 tempo)
	if echo $v | grep -E -q '^[0-9]+$'
	then
		if [ $v -gt 6000 ]
		then
			da=$(( v * 25 / 100 ))
		else
			da=$(( v * 30 / 100 ))
		fi
	fi
	hra=$(( v * 10 / 100 ))
	gs=$(( v + da + hra ))
	echo
	echo "Employee name: $emp"
	echo "Employee salary: $v"
	echo "Employee da: $da"
	echo "Employee hra: $hra"
	echo "Employee gross: $gs"
	echo
done < empn.lst
