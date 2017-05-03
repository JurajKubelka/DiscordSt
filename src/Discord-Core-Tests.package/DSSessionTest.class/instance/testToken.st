tests
testToken
	session := self newSession.
	session token: self tokenString.
	self assert: session token equals: self tokenString.
