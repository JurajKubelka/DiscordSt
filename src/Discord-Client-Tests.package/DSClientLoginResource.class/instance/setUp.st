initialization
setUp
	super setUp.
	(self externalEmail isNil or: [ self externalPassword isNil ])
		ifTrue: [ self skip: 'Email and password are missing' ].
	client := self newClient.
	client email: self externalEmail password: self externalPassword.
	client login.
	self assert: client isAuthenticated.