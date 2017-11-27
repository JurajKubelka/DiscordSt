test - sending
testAsyncSend
	"Send JSON entity asynchronously"
	| port serverRequests semaphore delegate timeout |
	serverRequests := OrderedCollection new.
	semaphore := Semaphore new.
	server := ZnServer startOn: 0.
	delegate := ZnDispatcherDelegate new.
	delegate map: '/' to: [ :request :response | 
		serverRequests add: request. 
		semaphore signal.
		response entity: (ZnEntity text: 'ROOT') ].
	server delegate: delegate.
	port := server serverSocket port.
	client := self classToTest new 
		url: 'http://localhost:', port asString;
		message: self messageString.
	client asyncSend.
	timeout := semaphore waitTimeoutMSecs: 300.
	self deny: timeout.
	self assert: serverRequests size equals: 1.
