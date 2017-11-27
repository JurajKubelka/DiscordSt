test - sending
testPostNetworkError6
	"Post multi-part data form entity"
	client := self classToTest new 
		url: 'http://nonexistingserver.localhost.';
		message: self messageString;
		fileName: self anyString bytes: self bytes.
	self should: [ client send ] raise: NameLookupFailure.