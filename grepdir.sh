#! /bin/bash
#Wen Xi Zhang && Hiu Hong Yu

if [ $# -lt 2 ]
then
	echo "usage: $0 directory pattern [-grep option]*"
exit 1
fi #check if it has enough entry

if [ $# -eq 2 ]
then
	find $1 -exec grep $2 {} \;
else
  if [ $# -eq 3 ]
  then	
	find $1 -exec grep $3 $2 {} \;
  else
    if [ $# -eq 4 ]
    then
 	find $1 -exec grep $3 $4 $2 {} \;
    else
      if [ $# -eq 5 ]
      then
 	  find $1 -exec grep $3 $4 $5 $2 {} \;
      else
        if [ $# -eq 5 ]
        then
 	    find $1 -exec grep $3 $4 $5 $6 $2 {} \;
        else
           if [ $# -eq 7 ]
           then
 	    find $1 -exec grep $3 $4 $5 $6 $7 $2 {} \;
        fi#7 entry
      fi#6 entry
    fi#5 entry
  fi#4 entry
fi#3 entry
fi#2 entry