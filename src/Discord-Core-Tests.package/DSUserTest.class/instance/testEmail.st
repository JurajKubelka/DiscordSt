tests
testEmail
	user := self newUser.
	user email: self anyString.
	self assert: user email equals: self anyString.