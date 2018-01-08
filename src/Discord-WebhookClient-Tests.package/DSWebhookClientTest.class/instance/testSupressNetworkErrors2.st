test - sending
testSupressNetworkErrors2
	"Post multi-part data form entity"
	| response |
	self startMockServer.
	client := self classToTest new 
		url: self serverUrl;
		message: self messageString;
		fileName: self anyString bytes: self bytes;
		supressNetworkErrors.
	server stop.
	response := client send.
	self assert: response isNil