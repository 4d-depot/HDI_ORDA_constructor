Class extends Entity



Function event touched($event : Object)
	
	var $logInfo : Object
	
	//var $inStock:=ds.Products.query("name = :1"; This.product.name).first().inStock
	
	var $inStock:=This:C1470.product.inStock
	
	This:C1470.info:="OK"
	
	Case of 
		: (This:C1470.quantity>$inStock)
			This:C1470.info:="Sold out"
			
		: ((This:C1470.wrapSeparately) && (Not:C34(This:C1470.product.allowWrapSeparately)))
			This:C1470.info:="This product can't be wrapped separately"
			
		: ((This:C1470.wrapSeparately) && (This:C1470.product.allowWrapSeparately) && (Mod:C98(This:C1470.quantity; 2)#0))
			This:C1470.info:="This products is wrappable separately only for an even quantity"
	End case 
	
	
	
exposed Function apply() : cs:C1710.OrderLineEntity
	return This:C1470