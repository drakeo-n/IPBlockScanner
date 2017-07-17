#!/bin/bash
# IP Block Pinger By DRAKEO AND NO ONE ELSE --COFFESH0P--
clear
echo -START- >> ipscanlog.txt
echo IP Block Pinger BY DRAKEO
echo _________________________
echo Enter IP Block To Be Scanned
# Setup Vars
a=0
b=0
# Gather User Input
read a
# Clear The Screen
clear
# Let the User know the Proccess has Began
echo Pinging Block $a$b
# Line To Mark the Start
echo ______________________
# While the last IP Block is less than 255
while [ $b -lt 255 ]
do
# Add One to the Last IP Block
let b++
# Ping the Next IP
ping -c 1 -W 2 $a$b ; s=$? ;
# If the Address is a Valid one
if [ $s = 0 ]
then
# Let the User Know it exists
echo $a$b Exists
# Save The Valid IP List to a log
echo _____________________________ >> ipscanlog.txt
echo $a$b Exists >> ipscanlog.txt
# End The If loop
fi
# Repeat Process
done
