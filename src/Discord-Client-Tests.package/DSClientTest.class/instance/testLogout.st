tests
testLogout
	self skip: 'Currently it does not work'.
	(self externalEmail isNil or: [ self externalPassword isNil ])
		ifTrue: [ ^ self skip: 'Email and password are missing' ].
	client := self newClient.
	client email: self externalEmail password: self externalPassword.
	client login.
	self assert: client isAuthenticated.
	200 milliSeconds wait.
	client logout.
	self deny: client isAuthenticated.
	client logout.
	self deny: client isAuthenticated.
