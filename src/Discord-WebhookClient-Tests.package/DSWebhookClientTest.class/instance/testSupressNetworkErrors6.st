test - sending
testSupressNetworkErrors6
	"Post multi-part data form entity"
	| response |
	client := self classToTest new 
		url: 'http://nonexistingserver.localhost.';
		message: self messageString;
		fileName: self anyString bytes: self bytes;
		supressNetworkErrors.
	response := client send.
	self assert: response isNil