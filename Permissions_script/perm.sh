#!/bin/bash
inf=$(cat Aboutme.md)
echo "Help $inf"

echo "Enter The file or The directory's name"

read file1

if [ -d $file1  ]
then
	echo "You have entered a directory"
    echo "Enter w or r or x"
    read x
if [ $x == "x"  ] #1
then
for i in $file1/*
do
if [ -x $i  ]
then
	echo "The file named: [$i] is executable"
else
        echo "The file named: [$i] is not executable"
fi
done

elif [ $x == "r" ]  #2
then
	for i in $file1/*
do
if [ -r $i  ]
then
	echo "The file named: [$i] is readable"
else
        echo "The file named: [$i] is not readable"
fi
done

else #3
	for i in $file1/*
do
if [ -w $i  ]
then
	echo "The file named: [$i] is writable"
else
        echo "The file named: [$i] is not writable"
fi

done
fi


else
	echo "You have entered a file"
	echo "Enter w or r or x"
    read x1
    if [ $x1 == "x" ] #1
    	then
	if [ -x $file1  ]
	then
	echo "The file named [$file1] is executable"
else

	 echo "The file named [$file1] is not executable"
	fi
	elif [ $x1 == "r" ] #2
		then
			if [ -r $file1  ]
	then
	echo "The file named [$file1] is readable"
else

	 echo "The file named [$file1] is not readable"
	fi
else #3
	if [ -w $file1  ]
	then
	echo "The file named [$file1] is writable"
else

	 echo "The file named [$file1] is not writable"
	fi
fi

fi

echo "The program has inded we are gonna miss you $(whoami) (: "
