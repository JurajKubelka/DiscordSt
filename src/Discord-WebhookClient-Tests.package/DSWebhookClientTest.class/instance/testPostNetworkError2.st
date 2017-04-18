tests
testPostNetworkError2
	"Post JSON entity"
	| port |
	server := ZnServer startOn: 0.
	port := server serverSocket port.
	server stop.
	client := DSWebhookClient new 
		url: 'http://localhost:', port asString;
		message: self messageString.
	self should: [ client post ] raise: ConnectionTimedOut.