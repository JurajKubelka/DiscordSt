test - sending
testSupressNetworkErrors4
	"Post multi-part data form entity"
	| result |
	self startMockServer.
	client := self classToTest new 
		url: self serverUrl / 'doesNotExists';
		message: self messageString;
		fileName: self anyString bytes: self bytes;
		supressNetworkErrors.
	result := client send.
	self assert: result class equals: DSResponseError.