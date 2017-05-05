tests
testMeUnauthorized
	self startZnServer.
	api := self newApi.
	api apiUrl: self localServerApiUrl.
	api token: self tokenString.
	delegate map: '/api/users/@me' to: self unauthorizedResponseBlock.
	self
		should: [ api me ]
		raise: DSUnauthorizedOperationError
		withExceptionDo: self unauthorizedExceptionAssetionBlock.
	self assert: serverRequests size equals: 1.
	self assert: serverRequests first method equals: #GET.
