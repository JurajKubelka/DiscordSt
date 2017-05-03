tests
testPrintString2
	session := self newSession.
	session token: self tokenString.
	self assert: session printString equals: 'Session: authenticated'.
