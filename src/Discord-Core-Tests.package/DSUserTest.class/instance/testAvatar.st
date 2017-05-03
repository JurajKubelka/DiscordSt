tests
testAvatar
	user := self newUser.
	user avatar: self anyString.
	self assert: user avatar equals: self anyString.