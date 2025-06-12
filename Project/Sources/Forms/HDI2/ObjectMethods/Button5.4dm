

var $requestObj : Object
var $request : Object

If (btnTrace)
	TRACE:C157
End if 

var $headers : Object:={Cookie: ""}
var $requestObj; $request : Object

var $start; $end : Integer
var $cookies : Collection
var $cookie : Text


If (Form:C1466.authentified=False:C215)
	
	$headers:=buildHeaders
	
	$requestObj:={method: HTTP POST method:K71:2; headers: $headers}
	
	$request:=4D:C1709.HTTPRequest.new("http://127.0.0.1/rest/$catalog/authentify"; $requestObj).wait()
	
	If (Storage:C1525.session.cookie=Null:C1517)
		
		If ($request.response.status=200)
			
			If (Value type:C1509($request.response.headers["set-cookie"])=Is collection:K8:32)
				$cookies:=$request.response.headers["set-cookie"]
				$cookie:=$cookies.find(Formula:C1597((Position:C15("4DSID_HDI_ORDA_Events_Part_1"; $1.value)#0)))
			Else 
				$cookie:=$request.response.headers["set-cookie"]
			End if 
			
			$start:=Position:C15("4DSID_HDI_ORDA_Events_Part_1"; $cookie)
			$end:=Position:C15(";"; $cookie; $start)
			
			Use (Storage:C1525.session)
				Storage:C1525.session.cookie:=Substring:C12($cookie; $start; $end-$start)
			End use 
		End if 
	End if 
	
	Form:C1466.authentified:=True:C214
	
End if 


$headers:=buildHeaders

$requestObj:={method: HTTP POST method:K71:2; body: Form:C1466.body2; headers: $headers}

$request:=4D:C1709.HTTPRequest.new(Form:C1466.url; $requestObj).wait()

If ($request.response.body#Null:C1517)
	Form:C1466.response:=$request.response.body
End if 

Form:C1466.products:=ds:C1482.Products.all()