tests - public - authentication
testLogoutUnauthorized
	"Unauthorized logout"

	self startMockServer.
	restApi := self newRestApi.
	restApi apiUrl: self apiUrl.
	restApi token: 'secret-token'.
	self mockServerDelegate map: '/api/auth/logout' to: self unauthorizedResponseBlock.
	self
		should: [ restApi logout ]
		raise: DSUnauthorizedOperationError
		withExceptionDo: self unauthorizedExceptionAssetionBlock.
	self assert: restApi isAuthenticated.
	self assert: restApi token equals: 'secret-token'.
	self assert: self mockServerRequests size equals: 1.
	self
		assert: self mockServerRequests first contents
		equals: '{"token":"secret-token"}'.
	self assert: self mockServerRequests first method equals: #POST