Class extends Entity



Function event touched title($event : Object)
	This:C1470.buildMailLabelLine1()
	
Function event touched firstname($event : Object)
	This:C1470.buildMailLabelLine1()
	
Function event touched lastname($event : Object)
	This:C1470.buildMailLabelLine1()
	
	
	
Function event touched streetNumber($event : Object)
	This:C1470.buildMailLabelLine2()
	
Function event touched street($event : Object)
	This:C1470.buildMailLabelLine2()
	
	
Function event touched zipCode($event : Object)
	This:C1470.buildMailLabelLine3()
	
Function event touched city($event : Object)
	This:C1470.buildMailLabelLine3()
	
	
	
Function buildMailLabelLine1()
	This:C1470.mailLabel.line1:=This:C1470.title+" "+This:C1470.firstname+" "+This:C1470.lastname
	
Function buildMailLabelLine2()
	This:C1470.mailLabel.line2:=String:C10(This:C1470.streetNumber)+" "+This:C1470.street
	
Function buildMailLabelLine3()
	This:C1470.mailLabel.line3:=This:C1470.zipCode+" - "+Uppercase:C13(This:C1470.city)
	
	
	//For Qodly
exposed Function apply() : cs:C1710.PeopleEntity
	return This:C1470