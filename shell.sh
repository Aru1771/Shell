#!/bin/bash

# print even numbers in the range

#for i in {1..20}
#do
#	if [ $((i % 2)) -eq 1 ];
#	then
#		echo "$i"
#	fi
#done

##########################################################################################
# the below code will take 5 inputs from the user and print only >50 numbers
#


greaterthan_values=()
# in this empty arry we will store the values greater then 50

#for i in {1..5}
#do
#	read -p "Enter Number: " i
#
#	if [ $i -gt 50 ]; then
#		greaterthan_values+=($i)
#in the above command we will store i values greater then 50 in the array
#	fi	
#done

#echo "Number is Gt:"
#echo "${greaterthan_values[@]}"

###############################################################################################
# the below code will only print the name which have more than 5 charecters


#words=("aravind" "balu" "sai" "nikhil")

#for i in "${words[@]}"   
#do
#	len=${#i}
#	if [ $len -gt 5 ]; then
#		echo "$i"
#	fi
#done

##################################################################################################
#the below code filters the .txt files which are more than 1KB
#
big_file=()

#for i in *.txt
#do
#	size=$(stat -c %s $i) #it will give only file size in bytes eg:5090 bytes
#	if [ $size -gt 1240 ]; then
#		big_file+=($i)
#	fi
#done
#
#echo "big files: "
#echo "${big_file[@]}"

#####################################################################################################
# the below code gives the below mentioned serviecs running or not
#
#services=("docker" "httpd" "jenkins")

#for i in "${services[@]}"
#do
#	systemctl is-active --quiet "$i"
#
#	if [ $? -eq 0 ];then
#		echo "$i is running"
#	fi
#done
########################################################################################################

# below command give the list of files which are modified less than 24 hours
#
# find /var/log -type f -mtime -1
#########################################################################################################333
#below code takes 10 inputs and print only even numbers


#count=1
#
#even_num=()

#while [ $count -le 10 ]
#do
#	read -p "enter the number: " num

#	if [ $((num % 2)) -eq 0 ]; then
#		even_num+=($num)
#	fi

#	count=$((count+1))
#done

#echo "even numbers: "
#echo "${even_num[@]}"

#####################################################################################################################
#the below code will check the servers are running or not and give the out put logs in the file formate
#
#
#services=("1.1.1.1" "8.8.8.8")
#file_name="servers_status$(date '+%y-%m-%d_%H-%M-%S')"
#for i in "${services[@]}"
#do
#	ping -c 2 $i &>>"$file_name"

#        if [ $? -eq 0 ]; then
#		echo "$i is up" >>"$file_name"
#	else
#		echo "$i is down" >>"$file_name"
#	
#	fi
#done
#############################################################################################################

#services=("nginx" "docker" "jenkins")

#for i in "${services[@]}"
#do
#	systemctl is-active --quiet "$i"
#
#	if [ $? -eq 0 ]; then
#		echo "$i is running"
#	else
#		echo "$i need restart"
#	fi
#done
############################################################################################################
# the below code check the every log file in /var/log folder and prints if that logfile have error messages
#for i in /var/log/*.log
#do
#	if grep "error" "$i"; then
#		echo "print $i"
#       fi
#done
###############################################################################################################################
#the below script check how many variablrs we are passing at run time if we are passing less than 2 variables it will give error
#set -euo pipefail

#if [ $# -lt 2 ]; then
#	echo "error"
#	exit 1
#fi

#APP_NAME="$1"
#APP_ENV="$2"

#echo "$APP_NAME is running on $APP_ENV"

#########################################################################################################################################

#read -p "Enter the service name: " service

#systemctl is-active --quiet $service
#
#if [ $? -eq 0 ]; then
#	echo "$service is running"
#else
#	echo "$service is stopped"
#fi
##########################################################################################################################
# this scripty will check the input is file or folder and tell us and if the file and folder not available it will tell 
#file="$1"

#if [ -f "$file" ]; then
#	
#       echo "this is a file"
#elif [ -d "$file" ]; then
#        echo "this is folder"
#else
#        echo  "there is no file or folder exist"
#fi

#Test	Meaning
#-f	regular file
#-d	directory
#-e	exists
#-s	not empty
#-r	readable
#-w	writable
#-x	executable
#-L	symlink
#-O	owner
#-nt	newer
#-ot	older

##########################################################################################################################
#this script will check softwates are installed or not

#read -p "Enter service name: " service

#if  command -v "$service" >/dev/null 2>&1 ; then
#	echo "installed"
#else
#	echo "not-installed"
#fi
































