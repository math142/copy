#! /bin/bash

if [[ -d $1 ]]; then
	if [[ $2 = "portable" ]];
	then
		echo "clem02069008"|sudo scp -r $1 mathieu@192.168.188.204:/home/mathieu
		
	elif [[ $2 = "raspberrypi1" ]];
	then
		sudo  scp -r $1 pi@192.168.188.245:/home/pi
               

	elif [[ $2 = "raspberry2" ]];
	then
		echo "clem02069008"|sudo scp -r $1 mathieu@192.168.188.247:/home/pi
                

	elif [[ $2 = "nas" ]];
	then
		echo "clem02069008"|sudo cp -R $1 /home/nas
	fi

elif [[ -f $1 ]];then
	 if [[ $2 = "portable" ]];
        then
                echo "clem02069008"|sudo scp  $1 mathieu@192.168.188.204:/home/mathieu
                   
        elif [[ $2 = "raspberrypi1" ]];
        then
                sudo  scp  $1 pi@192.168.188.245:/home/pi
                  

        elif [[ $2 = "raspberry2" ]];
        then
                echo "clem02069008"|sudo scp  $1 mathieu@192.168.188.247:/home/pi
                   

        elif [[ $2 = "nas" ]];
        then
                echo "clem02069008"|sudo cp  $1 /home/nas
        fi

fi 
