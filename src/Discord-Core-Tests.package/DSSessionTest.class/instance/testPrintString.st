tests
testPrintString
	session := self newSession.
	self assert: session printString equals: 'Session: unauthenticated'.
