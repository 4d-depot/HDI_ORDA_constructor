Class extends Entity



Class constructor()
	
	This:C1470.creationDate:=Current date:C33()
	This:C1470.comment:="Created by the "+Path to object:C1547(Structure file:C489).name+" app (process "+Current process name:C1392+" )"
	
	
	
Function event touched($event : Object)
	
	var $logInfo : Object
	
	If (Storage:C1525.logs#Null:C1517)
		$logInfo:=New shared object:C1526()
		Use ($logInfo)
			$logInfo.dataclass:=$event.dataClassName
			$logInfo.attribute:=$event.attributeName
			$logInfo.entityID:=This:C1470.ID
			$logInfo.updatedBy:=Current user:C182()
			$logInfo.when:=String:C10(Current date:C33())
			$logInfo.at:=String:C10(Current time:C178())
		End use 
		
		Use (Storage:C1525.logs)
			Storage:C1525.logs.push($logInfo)
		End use 
	End if 
	
	
exposed Function apply() : cs:C1710.PeopleEntity
	return This:C1470