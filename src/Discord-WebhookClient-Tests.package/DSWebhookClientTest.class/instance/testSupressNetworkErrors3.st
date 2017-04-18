tests
testSupressNetworkErrors3
	"Post JSON entity"
	| response port |
	server := ZnServer startOn: 0.
	port := server serverSocket port.
	client := DSWebhookClient new 
		url: 'http://localhost:', port asString, '/doesNotExists';
		message: self messageString;
		supressNetworkErrors.
	response := client post.
	self assert: response isError