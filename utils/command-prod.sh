#! /bin/bash

# Não precisava desse tanto de código, porém eu estava afim de aprender um pouco sobre shell script.

BUILDING() {
    echo -e "Building production docker"
    docker-compose -f docker-compose.prod.yml build
    if [ $? -eq 0 ] ; then
        echo -e "\e[32mCommand was executed successfully...\e[37m"
    else
    	echo -e "\e[31mCommand was not executed successfully...\e[37m"
    fi
}

RUNING() {
    echo -e "Runing production docker"
    docker-compose -f docker-compose.prod.yml up -d
    if [ $? -eq 0 ] ; then
        echo -e "\e[32mCommand was executed successfully...\e[37m"
    else
    	echo -e "\e[31mCommand was not executed successfully...\e[37m"
    fi
}

STOP() {
    echo -e "Stop containers"
    docker-compose -f docker-compose.prod.yml down -v
    if [ $? -eq 0 ] ; then
        echo -e "\e[32mCommand was executed successfully...\e[37m"
    else
    	echo -e "\e[31mCommand was not executed successfully...\e[37m"
    fi
}

OPTION="$1"

if [[ $OPTION == "BUILD" ]] ; then
    BUILDING

elif [[ $OPTION == "RUN" ]] ; then  
    RUNING

elif [[ $OPTION == "STOP" ]] ; then  
    STOP

else
    echo "Command not found."
    
fi