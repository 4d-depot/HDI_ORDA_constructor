

If (btnTrace)
	TRACE:C157
End if 

Form:C1466.products:=ds:C1482.Products.initProducts().copy()

OBJECT SET ENABLED:C1123(*; "SaveButton"; ((Form:C1466.product#Null:C1517) && (Form:C1466.product.name#"") && (Form:C1466.product.price#0)))