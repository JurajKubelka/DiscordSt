tests
testResetToken
	session := self newSession.
	session token: self tokenString.
	session resetToken.
	self assert: session token isNil.