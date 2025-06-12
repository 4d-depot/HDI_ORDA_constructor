

var $value : Integer


Case of 
	: (Form event code:C388=On After Keystroke:K2:26)
		
		$value:=Num:C11(Get edited text:C655)
		
		OBJECT SET ENABLED:C1123(*; "SaveButton"; ((Form:C1466.product#Null:C1517) && (Form:C1466.product.name#"") && ($value#0)))
		
		Form:C1466.product.price:=$value
		
End case 