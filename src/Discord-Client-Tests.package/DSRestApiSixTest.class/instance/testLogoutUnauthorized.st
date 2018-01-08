tests
testLogoutUnauthorized
	"Unauthorized logout"

	self startMockServer.
	api := self newRestApi.
	api apiUrl: self apiUrl.
	api token: 'secret-token'.
	self mockServerDelegate map: '/api/auth/logout' to: self unauthorizedResponseBlock.
	self
		should: [ api logout ]
		raise: DSUnauthorizedOperationError
		withExceptionDo: self unauthorizedExceptionAssetionBlock.
	self assert: api isAuthenticated.
	self assert: api token equals: 'secret-token'.
	self assert: self mockServerRequests size equals: 1.
	self
		assert: self mockServerRequests first contents
		equals: '{"token":"secret-token"}'.
	self assert: self mockServerRequests first method equals: #POST