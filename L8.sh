echo "enter any non-zero value"
read var
while [ $var -ne 0 ]
do
echo "Enter item and item code"
read i
read ic
echo $i $ic >> item.txt
echo "Do you want to exit the loop ? (0 for yes, 1 for no)"
read var
done
cat item.txt
