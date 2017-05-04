tests
testLogoutUnauthorized
	"Unauthorized logout"

	self startZnServer.
	api := self newApi.
	api apiUrl: self localServerApiUrl.
	api token: 'secret-token'.
	delegate map: '/api/auth/logout' to: self unauthorizedResponseBlock.
	self
		should: [ api logout ]
		raise: DSUnauthorizedOperationError
		withExceptionDo: self unauthorizedExceptionAssetionBlock.
	self assert: api isAuthenticated.
	self assert: api token equals: 'secret-token'.
	self assert: serverRequests size equals: 1.
	self
		assert: serverRequests first contents
		equals: '{"token":"secret-token"}'.
	self assert: serverRequests first method equals: #POST