Class extends DataClass



exposed Function createNew() : cs:C1710.ProductsEntity
	
	return This:C1470.new()
	
	
exposed Function initProducts() : cs:C1710.ProductsSelection
	
	var $productsFile : 4D:C1709.File
	var $productsColl : Collection
	var $notDropped; $products : cs:C1710.ProductsSelection
	var $order : cs:C1710.OrderLineEntity
	var $status : Object
	
	
	$notDropped:=This:C1470.all().drop()
	
	$productsFile:=File:C1566("/PACKAGE/Resources/products.json")
	$productsColl:=JSON Parse:C1218($productsFile.getText())
	
	$products:=This:C1470.fromCollection($productsColl)
	
	
	$notDropped:=ds:C1482.OrderLine.all().drop()
	
	$order:=ds:C1482.OrderLine.new()
	$order.product:=$products.first()
	$order.quantity:=1
	$status:=$order.save()
	
	$order:=ds:C1482.OrderLine.new()
	$order.product:=$products.last()
	$order.quantity:=1
	$status:=$order.save()
	
	return $products
	
	