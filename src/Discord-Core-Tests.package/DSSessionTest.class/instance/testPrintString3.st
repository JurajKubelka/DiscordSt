tests
testPrintString3
	session := self newSession.
	session email: self emailString.
	session token: self tokenString.
	self assert: session printString equals: 'Session: authenticated as ', self emailString.
