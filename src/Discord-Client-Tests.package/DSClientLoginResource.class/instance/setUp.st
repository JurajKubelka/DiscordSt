initialization
setUp
	super setUp.
	client := self newClient.
	(self externalEmail isNil or: [ self externalPassword isNil ])
		ifTrue: [ self skip: 'Email and password are missing' ]
		ifFalse: [ 
			client email: self externalEmail password: self externalPassword.
			client login.
			self assert: client isAuthenticated ]