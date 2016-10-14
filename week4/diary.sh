#!bin/bash
diaryFile=diary.txt
echo "Enter Diary Entry "
read text
echo $( date ) >> diary.txt
echo $text >> diary.txt
echo " " >> diary.txt

