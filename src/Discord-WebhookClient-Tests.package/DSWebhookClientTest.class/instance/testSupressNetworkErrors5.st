test - post
testSupressNetworkErrors5
	"Post JSON entity"
	| response |
	client := DSWebhookClient new 
		url: 'http://nonexistingserver.localhost.';
		message: self messageString;
		supressNetworkErrors.
	response := client post.
	self assert: response isNil