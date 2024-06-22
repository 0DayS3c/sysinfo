#!bin/bash
#system informations script by Piyusha akash

#Banner
echo ""
echo -e '\033[1;33m' "" "SYSTEM" 
echo  "" "" "________   _____           _____________"                   
echo  "" "/        \  |   |           |           |  ____________"
echo  "" "" "-|    |-   |   |--------|  |   ________|  |          |"  
echo  "" "" "" "|    |    |            |  |   |________  |  |----|  |"
echo  "" "" "" "|    |    |   |-----|  |  |           |  |  |    |  |" "" "" "" "By Piyusha Akash" "" "" "> www.github.com/PiyushaAkash"
echo  "" "" "" "|    |    |   |     |  |  |   |-------|  |  |    |  |" 
echo  "" "" "-|    |-   |   |     |  |  |   |          |  |____|  |"
echo  "" "\ ______ /  |___|     |__|  |___|          |__________|"
#End of banner

#Main content
echo ""
echo -e '\033[1;32m' "> Here Your System Informations"
echo 

#user
echo -e '\033[1;31m' "> CURRENT USER :"
echo -e '\033[0;37m' "$(whoami)"
echo 

#date and time
echo -e '\033[1;31m' "> DATE & TIME :"
echo -e '\033[0;37m' "$(date)"
echo 

#system uptime
echo -e '\033[1;31m' "> SYSTEM UPTIME :"
echo -e '\033[0;37m' "$(uptime)"
echo 

#last loggin times
echo -e '\033[1;31m' "> LAST LOGIN TIMES :"
echo -e '\033[0;37m' "$(lastlog)"
echo 

#curent directory
echo -e '\033[1;31m' "> CURRENT DIRECTORY :"
echo -e '\033[0;37m' "$(pwd)"
echo 

#files in current dirrectory
echo -e '\033[1;31m' "> FILES IN THIS DIRECTORY :"
echo -e '\033[0;36m' "$(dir)"
echo 

#Installed Packages
echo -e '\033[1;31m' "> INSTALLED PACKAGES :"
echo -e '\033[0;37m' "$(dpkg --get-selections)"
echo 

#sys info 01
echo -e '\033[1;31m' "> SYSTEM INFORMTIONS :"
echo -e '\033[0;37m' "$(grep VERSION /etc/os-release)"
echo
echo "$(uname -a)"
echo

#sys info 02
echo -e '\033[1;31m' "> ADVANCE SYSTEM INFORMATIONS :"
echo -e '\033[0;37m' "$(cat /etc/os-release)"
echo 

#running process
echo -e '\033[1;31m' "> RUNNING PROCESSES :"
echo -e '\033[0;37m' "$(ps aux --sort=-%mem | head -n 11)"
echo 

#Top 10 CPU-consuming processes
echo -e '\033[1;31m' "> TOP 10 CPU-CONSUMING PROCESSES :"
echo -e '\033[0;37m' "$(ps aux --sort=-%mem | head -n 11)"
echo 

#Network informations
echo -e '\033[1;31m' "> NETWORK INFORMATIONS :"
echo -e '\033[0;37m' "$(ifconfig)"
echo ""
echo "$(ip address)"
echo 

#Storage usage
echo -e '\033[1;33m' "> STORAGE USAGE INFORMATIONS :"
echo 

#disk usage
echo -e '\033[1;31m' "> DISK USAGE :"
echo -e '\033[0;37m' "$(df -h)"
echo 

#partition table
echo -e '\033[1;31m' "> PARTITION TABLE :"
echo -e '\033[0;37m' "$(sudo fdisk -l)"
echo 

#disk i/o statics
echo -e '\033[1;31m' "> DISK I/O STATICS :"
echo -e '\033[0;37m' "$(iostat)"
echo 

#detailed disk informations
echo -e '\033[1;31m' "> DETAILED DISK INFORMATIONS :"
echo -e '\033[0;37m' "$(hdparm -I /dev/sda)"
echo 

#hardware informations
echo -e '\033[1;33m' "> HARDWARE INFORMATIONS :"
echo

#cpu info
echo -e '\033[1;31m' "> CPU INFORMATIONS :"
echo -e '\033[0;37m' "$(lscpu)"
echo 

#memory info
echo -e '\033[1;31m' "> MEMORY (RAM) INFORMATIONS :"
echo -e '\033[0;37m' "$(sudo dmidecode --type 17)"
echo 
echo "$(free -h)"
echo

#pci devices
echo -e '\033[1;31m' "> PCI DEVICES :"
echo -e '\033[0;37m' "$(lspci)"
echo 

#block devices
echo -e '\033[1;31m' "> BLOCK DEVICES :"
echo -e '\033[0;37m' "$(lsblk)"
echo 

#usb devices
echo -e '\033[1;31m' "> USB DEVICES:"
echo -e '\033[0;37m' "$(lsusb)"
echo 

#Service Status
echo -e '\033[1;33m' "> SERVICE STATUS :"
echo

#list of all services
echo -e '\033[1;31m' "> LIST OF ALL SERVICES :"
echo -e '\033[0;37m' "$(systemctl list-units --type=service)"
echo 

#list of active services
echo -e '\033[1;31m' "> LIST OF ACTIVE SERVICES :"
echo -e '\033[0;37m' "$(systemctl list-units --type=service --state=active)"
echo 

#user informations
echo -e '\033[1;31m' "> CURRENT USER INFORMATIONS :"
echo -e '\033[0;37m' "$(cat /etc/passwd)"
echo 
