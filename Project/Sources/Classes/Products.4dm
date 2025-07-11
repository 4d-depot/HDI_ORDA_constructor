Class extends DataClass




exposed Function initProducts() : cs:C1710.ProductsSelection
	
	var $productsFile : 4D:C1709.File
	var $productsColl : Collection
	var $notDropped; $products : cs:C1710.ProductsSelection
	
	
	$notDropped:=This:C1470.all().drop()
	
	$productsFile:=File:C1566("/PACKAGE/Resources/products.json")
	$productsColl:=JSON Parse:C1218($productsFile.getText())
	
	$products:=This:C1470.fromCollection($productsColl)
	
	return $products
	
	