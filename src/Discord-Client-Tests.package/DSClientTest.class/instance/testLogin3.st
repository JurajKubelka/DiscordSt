tests
testLogin3
	"Login attempt with an incorrect email and password."
	true ifTrue: [ ^ self skip ].
	client := self newClient.
	client email: self emailString password: self passwordString.
	self should: [ client login ] raise: DSCannotLoginError.
	self deny: client isAuthenticated.