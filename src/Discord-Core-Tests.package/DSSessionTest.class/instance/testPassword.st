tests
testPassword
	session := self newSession.
	session password: self passwordString.
	self assert: session password equals: self passwordString.