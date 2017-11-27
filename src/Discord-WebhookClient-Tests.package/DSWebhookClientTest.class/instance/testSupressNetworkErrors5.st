test - sending
testSupressNetworkErrors5
	"Post JSON entity"
	| response |
	client := self classToTest new 
		url: 'http://nonexistingserver.localhost.';
		message: self messageString;
		supressNetworkErrors.
	response := client send.
	self assert: response isNil