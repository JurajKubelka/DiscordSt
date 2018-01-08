tests
testMeUserUnauthorized
	self startMockServer.
	api := self newRestApi.
	api apiUrl: self apiUrl.
	api token: self constants tokenString.
	self mockServerDelegate map: '/api/users/@me' to: self unauthorizedResponseBlock.
	self should: [ api me ] raise: DSUnauthorizedOperationError withExceptionDo: self unauthorizedExceptionAssetionBlock.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first method equals: #GET.