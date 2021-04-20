#!/bin/bash

#This script will check the new insall server.
#April 2021 # By Apoti Eri..

echo -e "CPU Check\n"
CPU_N=`nproc`
if [ ${CPU} -lt 2]
then 
echo "CPU Check failed"
else
echo "Success CPU check"
fi

echo -e "\nTotal Memory\n"
Mem=`free -m |grep Mem | awk '{print$2}'`
if [ ${Mem} -lt 2000 ]
then
echo -e "\nTotal memory is ${Mem}MB.\n"
else
echo -e "\nThe Memory is 2000 or More\n"
fi


id = `id puppet`

if [ ${id} -eq 0 ]
then
echo -e "\nThe user puppet exists\n"
else
echo -e "\nTh User puppet does not exist"
fi

user = getent passwd puppet

kv=`uname -r | awk -F "." '{print $1}'`

if [ ${kv} -ge 3 ]
then
echo -e "Kernel version check pass"
else
echo -e "Kernel version check fail"
fi
