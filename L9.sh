#!/bin/bash

dCode=$1
descriptor=$2


if [[ $dCode =~ ^[0-9]+$ ]]
then
	if [[ $descriptor =~ ^[a-z,A-Z]+$ ]]
	then
		echo "$dCode $descriptor added successfully"
		echo $dCode $descriptor | cat >> desig.lst
	else
		echo "$descriptor is not a alphabet string"
	fi
else
	echo "$dCode is not a number"
fi

echo ""
echo "Desigl.lst"
cat desig.lst
