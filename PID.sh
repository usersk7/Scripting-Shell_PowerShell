#! /bin/bash

        arr=(13172  12739 13427 13433 )# To declare static Array 
       	     
			if(ps -p ${arr[@]}  )#this will validate process 
			then
				kill ${arr[@]} #this will Stop-Process from process	
				echo "This Killed PID'S : "${arr[@]}
			
			else 
				echo "No such process or Invalid PID"
			fi

       echo '#################....This is All process..........###########'
       ps -ef #....This is All process
       echo '                   '
       echo '#################....This is root process..........###########'
       ps -U root -u root#....This is root process.

		
