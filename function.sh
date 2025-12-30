#!/bin/bash

#Simple function
set -euo pipefail
#
#first_function() {
#	echo "Hello World"

#}

#first_function
#first_function
#first_function
#####################################

#Function with argument

#second_function() {
#	echo "Hello $1"
#
#
#}
#
#second_function World
#second_function Aravind
########################################

#Function + loop

#loop(){
#	for i in {1..10}
#	do
#		echo "$i"
#	done
#}

#loop

########################################

#Function + if

#if_function() {
#	for i in {1..20}
#	do
#		if [ $(( $i % 2 )) -eq 0 ]; then
#			echo "This is Even Number: $i "
#		else
#			echo "This is Odd Number: $i "
#		fi
#	done


#}

#if_function

###################################################################


#welcome() {
#	echo "Welcome to Shell Scripting"
#}
#
#welcome

##################################################################

#even() {

#	read -p "Enter the Number: " num

#	if [ $(( $num % 2 )) -eq 0 ]; then
#		echo "This is Even Number"
#	else
#		echo "This is Odd Number"
#	fi
			
#}

#even
##############################################################

#file() {
#   read -p "Enter the file name: " file
#
#  if [ -f $file ]; then
#
#	   echo "file is available"
#  else
#	   echo "file not available"
#  fi
#
#
#}
#
#
#file



##############################################################
#                                          
#num() {

#read -p "Enter the N value: " value

#for (( i=1; i<=value; i++ ))         #This is a C-style for loop, and it works with variables. 
#do
#	echo "$i"
#done
#}
#
#num


#num() {
#    read -p "Enter the n value: " value
#
#   for i in $(seq 1 "$value")
#    do
#        echo "$i"
#   done
#}
#
#num

############################################################################










🔑 Important Rule (Remember Forever)

Inside a function:

$1, $2, $3 → function arguments

Variables are global by default (we’ll fix this later)









