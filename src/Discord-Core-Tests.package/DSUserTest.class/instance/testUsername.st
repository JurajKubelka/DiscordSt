tests
testUsername
	user := self newUser.
	user username: self anyString.
	self assert: user username equals: self anyString.