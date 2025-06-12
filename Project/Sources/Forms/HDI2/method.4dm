Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		InitInfo
		
		Form:C1466.products:=ds:C1482.Products.all().copy()
		
		Form:C1466.people:=ds:C1482.People.all().first()
		
		Form:C1466.productNames:={values: ds:C1482.Products.all().orderBy("ID").name}
		
		Form:C1466.quantities:={values: [1; 2; 3; 4]}
		
		Form:C1466.orderLines:=ds:C1482.OrderLine.all()
		
		Form:C1466.authentified:=False:C215
		
		Form:C1466.url:="http://127.0.0.1/rest/Products"
		
		Form:C1466.body1:={name: "Red pack"; price: 50}
		
		Form:C1466.body2:={name: "Green pack"; price: 99; comment: "New green pack product"}
		
		Form:C1466.meta:=New object:C1471("fill"; "#ffcccc")
		
		Use (Storage:C1525)
			Storage:C1525.logs:=New shared collection:C1527()
		End use 
		
		manageTexts
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		OBJECT SET VISIBLE:C603(*; "NewProduct@"; False:C215)
		
		OBJECT SET VISIBLE:C603(*; "SaveButton"; False:C215)
		
		clearLogs
		
		
		manageTexts
		
		
	: (Form event code:C388=On Close Box:K2:21)
		If (Is Windows:C1573 && Application info:C1599().SDIMode)
			QUIT 4D:C291
		Else 
			CANCEL:C270
		End if 
		
End case 