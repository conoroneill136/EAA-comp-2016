#!bin/bash
echo "Enter Diary Entry "
read text
echo $( date ) >> diary.txt
echo $text >> diary.txt
echo " " >> diary.txt

