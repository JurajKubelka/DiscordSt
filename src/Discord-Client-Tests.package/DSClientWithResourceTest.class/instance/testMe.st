tests
testMe
	| user |
	self skipIfNotAuthenticated.
	user := self client me.
	self assert: user notNil.
	self assert: user class equals: DSUser.