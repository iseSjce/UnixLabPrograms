echo "Enter number of items"
read n
i=0
echo "Enter items and item code"
while [ $i -lt $n ]
do
	echo "enter $i's input"
	read items[$i]
	read itemsc[$i]
	i=` expr $i + 1 `
done
i=0
while [ $i -lt $n ]
do
	echo "${items[$i]} ${itemsc[$i]}" >> item.txt
	i=` expr $i + 1 `
done
cat item.txt

