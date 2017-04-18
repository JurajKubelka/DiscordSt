tests
testPostNetworkError7
	"Post JSON entity"
	client := DSWebhookClient new 
		url: 'http://nonexistingserver.localhost.';
		message: self messageString.
	self should: [ client post ] raise: NameLookupFailure.