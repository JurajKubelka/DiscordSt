test - sending
testSend
	"Send JSON entity"
	| message |
	self startMockServer.
	server delegate map: '/' to: [ :request :response | 
		response entity: self messageEntity ].
	client := self classToTest new 
		url: self serverUrl;
		message: self messageString.
	message := client send.
	self assert: message class equals: DSMessage.