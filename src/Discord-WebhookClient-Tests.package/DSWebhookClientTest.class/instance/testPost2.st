tests
testPost2
	| response port |
	server := ZnServer startOn: 0.
	port := server serverSocket port.
	client := DSWebhookClient new 
		url: 'http://localhost:', port asString;
		message: self messageString;
		fileName: self anyString bytes: self bytes.
	response := client post.
	self assert: response isSuccess