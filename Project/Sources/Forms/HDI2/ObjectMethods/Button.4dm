

If (btnTrace=True:C214)
	TRACE:C157
End if 

OBJECT SET VISIBLE:C603(*; "NewProduct@"; True:C214)

Form:C1466.product:=ds:C1482.Products.new()


OBJECT SET VISIBLE:C603(*; "SaveButton"; True:C214)

OBJECT SET ENABLED:C1123(*; "SaveButton"; ((Form:C1466.product#Null:C1517) && (Form:C1466.product.name#"") && (Form:C1466.product.price#0)))