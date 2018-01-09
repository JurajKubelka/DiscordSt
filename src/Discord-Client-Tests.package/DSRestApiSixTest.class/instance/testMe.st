tests - public - user
testMe
	| user |
	self startMockServer initializeUsersMeDelegate.
	restApi := self newRestApiWithApiUrlAndToken.
	user := restApi me.
	self assertUsersMe: user.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first method equals: #GET.