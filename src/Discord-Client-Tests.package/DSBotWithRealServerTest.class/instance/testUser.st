tests
testUser
	| user |
	self skipIfNotAuthenticated.
	user := self client user.
	self assert: user notNil.
	self assert: user class equals: DSUser.
	self assert: self client user == self client user.
	