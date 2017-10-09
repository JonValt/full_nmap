#!/bin/bash
#define colors
red=$'\e[1;31m'
end=$'\e[0m'
printf "Enter up to 5 hostnames separated by spaces: "
read hostOne hostTwo hostThree hostFour hostFive
if [[ -n "$hostOne" ]]
then
printf "\nChecking $hostOne: "
	if fping -c1 -t1000  $hostOne &>/dev/null
	then 
		printf "good!\n"
		hostOneStatus="true"
	else
		printf  "${red}not found${end}\n"
		hostOneStatus="false"
	fi
fi

if [[ -n "$hostTwo" ]]
then
printf "Checking $hostTwo: "
        if fping -c1 -t1000  $hostTwo &>/dev/null
        then 
                printf "good!\n"
                hostTwoStatus="true"
        else
                printf  "${red}not found${end}\n"
                hostTwoStatus="false"
        fi
fi

if [[ -n "$hostThree" ]]
then
printf "Checking $hostThree: "
        if fping -c1 -t1000  $hostThree &>/dev/null
        then 
                printf "good!\n"
                hostThreeStatus="true"
        else
                printf  "${red}not found${end}\n"
                hostThreeStatus="false"
        fi
fi

if [[ -n "$hostFour" ]]
then
printf "Checking $hostFour: "
        if fping -c1 -t1000  $hostFour &>/dev/null
        then 
                printf "good!\n"
                hostFourStatus="true"
        else
                printf  "${red}not found${end}\n"
                hostFourStatus="false"
        fi
fi

if [[ -n "$hostFive" ]]
then
printf "Checking $hostFive: "
        if fping -c1 -t1000  $hostFive &>/dev/null
        then 
                printf "good!\n"
                hostFiveStatus="true"
        else
                printf  "${red}not found${end}\n"
                hostFiveStatus="false"
        fi
fi


if [[ $hostOneStatus = "true" ]]
then
printf "Nmapping $hostOne... "
nohup nmap --top-ports 1000 -sTVU -A -oA /root/Desktop/$hostOne $hostOne &>/dev/null &
printf "$! \n"
fi

if [[ $hostTwoStatus = "true" ]]
then
printf "Nmapping $hostTwo...\n"
nohup nmap --top-ports 1000 -sTVU -A -oA /root/Desktop/$hostTwo $hostTwo &>/dev/null &
printf "$! \n"
fi

if [[ $hostThreeStatus = "true" ]]
then
printf "Nmapping $hostThree...\n"
nohup nmap --top-ports 1000 -sTVU -A -oA /root/Desktop/$hostThree $hostThree &>/dev/null &
printf "$! \n"
fi

if [[ $hostFourStatus = "true" ]]
then
printf "Nmapping $hostFour...\n"
nohup nmap --top-ports 1000 -sTVU -A -oA /root/Desktop/$hostFour $hostFour &>/dev/null &
printf "$! \n"
fi

if [[ $hostFiveStatus = "true" ]]
then
printf "Nmapping $hostFive...\n"
nohup nmap --top-ports 1000 -sTVU -A -oA /root/Desktop/$hostFive $hostFive &>/dev/null &
printf "$! \n"
fi

