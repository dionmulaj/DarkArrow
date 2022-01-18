#!/bin/bash

#DarkArrow has been created by Dion Mulaj
#This is just a V1 testing script

RED='\033[0;31m' #Red
GREEN='\033[0;32m' #Green
CYAN='\033[0;36m' #Cyan - light blue
BGREEN='\033[1;32m' #Bold Green
UCYAN='\033[4;36m' #Underlined Cyan
NC='\033[0m' # No Color


printf "
${BGREEN}Welcome to the DarkArrow!${NC}

${CYAN}NOTE: DarkArrow doesn't install the requirements.txt python libraries/modules for 
the tools provided. Requirements have to be installed manually using the following command:

pip3 install -r requirements.txt${NC}"

printf "

///////////////////////////////////////

${UCYAN}SYSTEM:${NC}                            

0) Fix missing packages                                     
1) Update & upgrade the packages     
2) Remove unnecessary packages       
3) Download & install build essential

///////////////////////////////////////

${UCYAN}TOOLS:${NC}
                               
4) Download Photon (RECON)
5) Download theHarvester (RECON)
6) Download ChopChop (RECON)
7) Download S3Scanner (RECON & DUMPER)
8) Download Httprobe (SCANNER)
9) Download WPEnum (ENUMERATION)
10) Download PwnXSS (SCANNER)
11) Download SubdomainTakeover (SCANNER)
12) Download routersploit (SCANNER/EXPLOITATION)
13) Download HomePWN (SCANNER/EXPLOITATION)
14) Download Enum4Linux (ENUMERATION)

///////////////////////////////////////"


echo "

Please choose an option:
"


read input

#Fix
if [ $input = 0 ]
then
      eval apt -y --fix-missing update
      eval apt -y update
      eval apt -y install -f
        printf "
        
        ${GREEN}Packages have been fixed!${NC}
        
        "

#Update & Upgrade
elif [ $input = 1 ]
then
      eval apt -y update
      eval apt -y upgrade
        printf "
        
        ${GREEN}Update & upgrade finished successfully!${NC}
        
        "

#Autoremove
elif [ $input = 2 ]
then
	eval apt -y autoremove
	printf "
	
	${GREEN}Unnecessary packages removed successfully!${NC}
	
	"

#Build Essential
elif [ $input = 3 ]
then
	eval apt -y install build-essential
	printf "
	
	${GREEN}Build Essential has been installed successfully!${NC}
	
	"

#Photon
elif [ $input = 4 ]
then
	eval git clone https://github.com/s0md3v/Photon.git
	
	printf "
	
	${GREEN}Photon has been installed successfully!${NC}
	
	"

#theHarvester
elif [ $input = 5 ]
then
	eval git clone https://github.com/laramies/theHarvester.git
	
	printf "
	
	${GREEN}theHarvester has been installed successfully!${NC}
	
	"

#ChopChop
elif [ $input = 6 ]
then
	eval git clone https://github.com/michelin/ChopChop.git
	
	printf "
	
	${GREEN}ChopChop has been installed successfully!${NC}
	
	"

#S3Scanner
elif [ $input = 7 ]
then
	eval git clone https://github.com/sa7mon/S3Scanner.git
	
	printf "
	
	${GREEN}S3Scanner has been installed successfully!${NC}
	
	"

#Httprobe
elif [ $input = 8 ]
then
	eval git clone https://github.com/tomnomnom/httprobe.git
	
	printf "
	
	${GREEN}Httprobe has been installed successfully!${NC}
	
	"

#WPEnum
elif [ $input = 9 ]
then
	eval git clone https://github.com/Sechunt3r/wpenum.git
	
	printf "
	
	${GREEN}WPEnum has been installed successfully!${NC}
	
	"

#PwnXSS
elif [ $input = 10 ]
then
	eval git clone https://github.com/pwn0sec/PwnXSS.git
	
	printf "
	
	${GREEN}PwnXSS has been installed successfully!${NC}
	
	"

#SubdomainTakeover
elif [ $input = 11 ]
then
	eval git clone https://github.com/m4ll0k/takeover.git
	
	printf "
	
	${GREEN}SubdomainTakeover has been installed successfully!${NC}
	
	"

#routersploit
elif [ $input = 12 ]
then
	eval git clone https://github.com/threat9/routersploit.git
	
	printf "
	
	${GREEN}Routersploit has been installed successfully!${NC}
	
	"

#HomePWN
elif [ $input = 13 ]
then
	eval git clone https://github.com/Telefonica/HomePWN.git
	
	printf "
	
	${GREEN}HomePWN has been installed successfully!${NC}
	
	"

#Enum4Linux
elif [ $input = 14 ]
then
	eval git clone https://github.com/CiscoCXSecurity/enum4linux.git
	
	printf "
	
	${GREEN}Enum4Linux has been installed successfully!${NC}
	
	"
	else
	printf "
	
	${RED}UNKNOWN COMMAND${NC}
	
	"
fi





















	

