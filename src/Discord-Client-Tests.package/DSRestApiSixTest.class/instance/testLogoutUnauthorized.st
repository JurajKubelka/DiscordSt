tests
testLogoutUnauthorized
	"Unauthorized logout"

	self startZnServer.
	api := self newRestApi.
	api apiUrl: self apiUrl.
	api token: 'secret-token'.
	self serverDelegate map: '/api/auth/logout' to: self unauthorizedResponseBlock.
	self
		should: [ api logout ]
		raise: DSUnauthorizedOperationError
		withExceptionDo: self unauthorizedExceptionAssetionBlock.
	self assert: api isAuthenticated.
	self assert: api token equals: 'secret-token'.
	self assert: self serverRequests size equals: 1.
	self
		assert: self serverRequests first contents
		equals: '{"token":"secret-token"}'.
	self assert: self serverRequests first method equals: #POST