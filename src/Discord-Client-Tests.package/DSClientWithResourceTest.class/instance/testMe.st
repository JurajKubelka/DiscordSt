tests
testMe
	| user |
	user := self client me.
	self assert: user notNil.
	self assert: user class equals: DSUser.