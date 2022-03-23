#!/usr/bin/bash 
# made by prince kumar 
# date 22 march 2022
# make a help function
help(){
    echo -e "\033[36;1m Uses numspy <number> <options>"
    echo -e "\033[35;1m Options : --name for name "
    echo -e "\033[35;1m Options : --text for information in text format "
}
# now handle the argument 
if [[ ( ${1} == "-h" ||  ${1} == "--help") ]];then 
help
elif [[ ${#1} -eq 13 ]];then
# now check for for user options 
if [[ ( ${2} == "--name" ||  ${2} == "--name " ) ]];then
truecallerjs -s ${1} --name
elif [[ ( ${2} == "--text" ||  ${2} == "--text " ) ]];then
truecallerjs -s ${1} --text
else 
truecallerjs -s ${1} --json
fi
else
echo -e "\033[31;1m Please provide some argument: "
help
fi
#make a function to get the text data
infojson() {
 #data = $(truecallerjs -s $1 --text)
 echo "$data"
}
