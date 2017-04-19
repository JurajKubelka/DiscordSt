test - post
testPostNetworkError3
	"Post multi-part data form entity"
	| port |
	server := ZnServer startOn: 0.
	port := server serverSocket port.
	server stop.
	client := DSWebhookClient new 
		url: 'http://localhost:', port asString;
		message: self messageString;
		fileName: self anyString bytes: self bytes.
	self should: [ client post ] raise: ConnectionTimedOut.