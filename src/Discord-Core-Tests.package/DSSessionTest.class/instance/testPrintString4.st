tests
testPrintString4
	session := self newSession.
	session email: self emailString.
	self assert: session printString equals: 'Session: unauthenticated user ', self emailString.
