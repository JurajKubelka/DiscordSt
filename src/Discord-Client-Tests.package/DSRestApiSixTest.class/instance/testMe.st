tests
testMe
	| user |
	self startMockServer initializeUsersMeDelegate.
	restApi := self classToTest new.
	restApi apiUrl: self apiUrl.
	restApi token: self constants tokenString.
	user := restApi me.
	self assertUsersMe: user.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first method equals: #GET.