tests
testMe
	"Ensure that user is cached."
	self skipIfNotAuthenticated.
	self assert: self client me == self client me.
	