#!/bin/bash
echo -e Author: Ethical_Astra
# Script to prompt for ssh connection
while true ;do
echo "Have you install SSH in your system ?"
echo "1. yes"
echo "2. No"

read -p "Enter your choice: " count

if [ $count -eq 1 ]
then 
read -p "Which server do you want to connect to: " server_name
read -p "which port do you want to connect as SSH connection:" port
read -p "Which username do you want to use: " user_name
ssh ${user_name}@$server_name $port
exit
elif [ $count -eq 2 ]
then
sudo apt-get install ssh -y
read -p "Which server do you want to connect to: " server_name
read -p "which port do you want to connect as SSH connection:" port
read -p "Which username do you want to use: " user_name
ssh ${user_name}@$server_name $port
exit
else 
echo "you are killer go back dude :) :) :)" 
fi
done


