test - post
testPostNetworkError4
	"Post JSON entity"
	| port response |
	server := ZnServer startOn: 0.
	port := server serverSocket port.
	client := DSWebhookClient new 
		url: 'http://localhost:', port asString, '/doesNotExists';
		message: self messageString.
	response := client post.
	self assert: response isError.