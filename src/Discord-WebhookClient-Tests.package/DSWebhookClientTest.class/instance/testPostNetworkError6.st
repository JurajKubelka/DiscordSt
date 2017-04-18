tests
testPostNetworkError6
	"Post multi-part data form entity"
	client := DSWebhookClient new 
		url: 'http://nonexistingserver.localhost.';
		message: self messageString;
		fileName: self anyString bytes: self bytes.
	self should: [ client post ] raise: NameLookupFailure.