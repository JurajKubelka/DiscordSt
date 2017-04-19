test - post
testSupressNetworkErrors2
	"Post multi-part data form entity"
	| response port |
	server := ZnServer startOn: 0.
	port := server serverSocket port.
	server stop.
	client := DSWebhookClient new 
		url: 'http://localhost:', port asString;
		message: self messageString;
		fileName: self anyString bytes: self bytes;
		supressNetworkErrors.
	response := client post.
	self assert: response isNil