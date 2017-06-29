tests-private
testDownloadDataDirectly
	| content |
	self startZnServer.
	self serverDelegate map: '/data.bytes' to: [ :request :response | 
		self serverRequests add: request.
		response entity: (ZnEntity bytes: self bytes); yourself ].
	command := self newObject.
	content := command downloadFileFrom: self serverUrl / 'data.bytes'.
	self assert: content equals: self bytes.