

var $text : Text

Case of 
	: (Form event code:C388=On After Keystroke:K2:26)
		
		$text:=Get edited text:C655
		
		OBJECT SET ENABLED:C1123(*; "SaveButton"; ((Form:C1466.product#Null:C1517) && ($text#"") && (Form:C1466.product.price#0)))
		
End case 