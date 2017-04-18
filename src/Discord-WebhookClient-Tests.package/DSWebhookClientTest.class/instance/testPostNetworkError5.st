tests
testPostNetworkError5
	"Post multi-part data form entity"
	| port response |
	server := ZnServer startOn: 0.
	port := server serverSocket port.
	client := DSWebhookClient new 
		url: 'http://localhost:', port asString, '/doesNotExists';
		message: self messageString;
		fileName: self anyString bytes: self bytes.
	response := client post.
	self assert: response isError.