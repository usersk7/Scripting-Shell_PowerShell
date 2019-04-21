
#Enter here Process Id in Array
$array = @(17320,9468,4756,9808,12340,14152,14684,4108,1252,18212)

if(Get-Process -Id $array) #this will validate process 
{    
     Write-host("                                 ")
	 Write-host("               This is Entered Valid Process ID")
   	 Get-Process -Id $array  #this will show entered process Id Details  
	
	 Write-host("                                 ")
	 for($i = 0; $i -lt $array.length; $i++)
		 { 
		 Write-host("---->>> This Process IDs are Stoped      ") $array[$i]
		 }
	
	 Stop-Process -Id $array  #this will Stop-Process from tasklist
	 #Get-Process | Sort-Object Id #this will DISPLAY process sort by id
	
}

 #Get-Process | Sort-Object ProcessName