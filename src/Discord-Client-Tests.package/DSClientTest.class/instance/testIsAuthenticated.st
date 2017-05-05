tests
testIsAuthenticated
	true ifTrue: [ ^ self skip ].
	client := self newClient.
	self deny: client isAuthenticated.