test - post
testSupressNetworkErrors6
	"Post multi-part data form entity"
	| response |
	client := DSWebhookClient new 
		url: 'http://nonexistingserver.localhost.';
		message: self messageString;
		fileName: self anyString bytes: self bytes;
		supressNetworkErrors.
	response := client post.
	self assert: response isNil