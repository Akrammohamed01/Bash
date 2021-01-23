#!/bin/bash
 echo "Enter 1 or 2"
 read num

 if [ $num -eq 1 ]
then
	 echo "You are using The first method"
	 echo "Enter The file"

	  read file1
	  if [ -e $file1 ]
	  then
	  	echo "The file named:[$file1] exists"
	  else
	  	echo "The file named:[$file1] dosen't exist"
	  fi

	elif [ $num -eq 2 ]
	then
	 echo "You are using The second method"
	  echo "Enter The file"
	  read file1

	  res=$(ls $file1 >/dev/null 2>&1)
      res=$?

      if [ $res -eq 0 ]
      then
	  	echo "The file named:[$file1] exists"
	  else
	    echo "The file named:[$file1] dosen't exist"
	fi
fi


		
	  	



