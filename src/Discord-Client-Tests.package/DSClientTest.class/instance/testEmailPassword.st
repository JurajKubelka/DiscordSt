tests
testEmailPassword
	true ifTrue: [ ^ self skip ].
	client := self newClient.
	client email: self emailString password: self passwordString.
	self assert: client email equals: self emailString.
	self assert: client password equals: self passwordString.