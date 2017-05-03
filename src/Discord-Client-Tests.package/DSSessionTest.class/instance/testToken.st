tests
testToken
	session := self newSession.
	session email: self tokenString.
	self assert: session email equals: self tokenString.
