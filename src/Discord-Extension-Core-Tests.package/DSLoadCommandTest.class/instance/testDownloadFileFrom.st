tests-private
testDownloadFileFrom
	| content |
	self startMockServer.
	self mockServerDelegate map: '/data.bytes' to: [ :request :response | 
		self mockServerRequests add: request.
		response entity: (ZnEntity bytes: self bytes); yourself ].
	command := self newObjectToTest.
	content := command downloadFileFrom: self serverUrl / 'data.bytes'.
	self assert: content equals: self bytes.