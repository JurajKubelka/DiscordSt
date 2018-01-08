test - sending
testSupressNetworkErrors3
	"Post JSON entity"
	| result |
	self startMockServer.
	server delegate map: '/' to: [ :request :response | 
		response entity: self messageEntity ].
	client := self classToTest new 
		url: self serverUrl / 'doesNotExists';
		message: self messageString;
		supressNetworkErrors.
	result := client send.
	self assert: result class equals: DSResponseError.