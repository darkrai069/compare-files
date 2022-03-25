#!/bin/bash

#here we give the 2 files to compare

#Say you wanna compare 2nd_file with 1st_file.
#1st file - default file
#2nd file - file that u wanna compare with the default file.

c=0
x=`pwd`
echo $x
echo " "

a=`cat $x/$1`
b=`cat $x/$2`

for lines in $a
do
	for check in $b
	do
		if [[ $check == $lines ]]
		then
			echo "[+] Match found in $2 : $check"
			c=$c+1
		else
			continue
		fi
				
	done
done

if [[ $c -eq 0 ]]
then
	echo "[-] No Matching Results"
fi


