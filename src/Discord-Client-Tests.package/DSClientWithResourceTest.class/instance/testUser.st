tests
testUser
	| user |
	user := self client user.
	self assert: user notNil.
	self assert: user class equals: DSUser.