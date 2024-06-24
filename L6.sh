echo Enter file name
read file
who > $file
echo Enter user name
read user
grep -o $user $file
if [ $? -eq 0 ]
then
	echo "Exists"
else
	echo "Does not exist"
fi
