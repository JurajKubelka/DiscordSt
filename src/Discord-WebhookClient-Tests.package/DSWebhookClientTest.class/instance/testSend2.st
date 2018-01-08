test - sending
testSend2
	"Send multi-part data form entity"
	| message |
	self startMockServer.
	server delegate map: '/' to: [ :request :response | 
		response entity: self messageEntity ].
	client := self classToTest new 
		url: self serverUrl;
		message: self messageString;
		fileName: self anyString bytes: self bytes.
	message := client send.
	self assert: message class equals: DSMessage.