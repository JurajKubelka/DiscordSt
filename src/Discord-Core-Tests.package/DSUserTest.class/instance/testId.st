tests
testId
	user := self newUser.
	user id: self anyString.
	self assert: user id equals: self anyString.