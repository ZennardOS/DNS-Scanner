#!/bin/bash


read -p "Enter the domain name: " DOMAIN


function checker(){
	result=$(host $SUB | grep 'has address')
	if [[ -n $result ]]
	then
		printf "Founded $SUB\n"
	fi
}



for subber in $(cat sub.txt)
do
	SUB=$subber.$DOMAIN
	checker
done
