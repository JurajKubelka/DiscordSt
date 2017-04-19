test - post
testSupressNetworkErrors
	"Post JSON entity"
	| response port |
	server := ZnServer startOn: 0.
	port := server serverSocket port.
	server stop.
	client := DSWebhookClient new 
		url: 'http://localhost:', port asString;
		message: self messageString;
		supressNetworkErrors.
	response := client post.
	self assert: response isNil