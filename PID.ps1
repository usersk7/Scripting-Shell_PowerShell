cls

$array = @( 6820,,6008,3036,2323232323) #Enter Process Id in Array her

			Write-host(" `n ****************This is Entered Valid Process ID************ `n")
			for($i = 0; $i -lt $array.length; $i++)
					 { 
									if(Get-Process -Id $array[$i]) #this will validate process 
									{    
										 
										 Get-Process -Id $array[$i] | Sort-Object Id  #this will show entered process Id Details  
										 Write-host("`n")	
										 Stop-Process -Id $array[$i]  #this will Stop-Process from tasklist				
														
									}
									else{ Write-host("`n Not valid Process ID " +$array[$i] +"`n" )}
						
						}
						Get-Process | Sort-Object Id #this will DISPLAY process sort by id
						Write-host("`n")	
						for($i = 0; $i -lt $array.length; $i++)
					 { 
						Write-host(" ---->>> This Process IDs are Stoped: ") $array[$i]			
						} 
  