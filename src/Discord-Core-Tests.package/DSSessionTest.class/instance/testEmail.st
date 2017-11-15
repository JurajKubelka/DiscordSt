tests
testEmail
	session := self newSession.
	session email: self emailString.
	self assert: session email equals: self emailString.
