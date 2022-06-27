#!/usr/bin/bash 
# made by prince kumar 
# date 22 mar 2022
# first check the os 
os=$(uname -o)
if [ ${os} == "Android" ];then
    #first install the node js 
    pkg update && pkg upgrade 
    pkg install nodejs-lts -y
    pkg install npm
    npm install dotenv 
    npm install -g  truecallerjs
    echo -e "\033[35;1m Login into trucaller account: "
    truecallerjs login
elif [ ${os} == "GNU/Linux" ];then
    sudo apt-get update && sudo apt-get upgrade 
    sudo apt install nodejs 
    sudo apt-get install npm
    npm install dotenv truecallerjs
    npm install -g  truecallerjs
    echo -e "\033[35;1m Login into trucaller account: "
    sudo truecallerjs login
else 
    sudo apt-get update && sudo apt-get upgrade 
    sudo apt install nodejs 
    sudo apt-get install npm
    npm install dotenv truecallerjs
    echo "if this script not working then run 'truecallerjs login' from your terminal: "
    sudo truecallerjs login
fi 

