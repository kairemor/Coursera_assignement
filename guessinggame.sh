#!/bin/bash
file_count()
{
	local n=0
	for ele in $elements * ; do
		if [[ -f $ele ]]; then
			((n=$n+1))
		fi
	done
    echo $n
	return $n
}

n=$(file_count)
echo  "How many file are in the current directory" 
read number 
while [[ $n -ne $number ]]; do
	if [[ $number -gt $n ]];
	then
		echo "Answer too high, try again."
		read number
	elif [[ $number -lt $n ]] ; 
	then
		echo "Answer too low, try again."
		read number 
	fi
done
echo "Congrate : you're right"

