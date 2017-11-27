test - sending
testPostNetworkError7
	"Post JSON entity"
	client := self classToTest new 
		url: 'http://nonexistingserver.localhost.';
		message: self messageString.
	self should: [ client send ] raise: NameLookupFailure.