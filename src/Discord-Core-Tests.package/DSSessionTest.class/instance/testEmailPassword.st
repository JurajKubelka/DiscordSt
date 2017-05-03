tests
testEmailPassword
	session := self newSession.
	session email: self emailString password: self passwordString.
	self assert: session email equals: self emailString.
	self assert: session password equals: self passwordString.