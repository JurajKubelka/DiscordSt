tests
testMe2
	"Ensure that user is cached."
	self assert: self client me == self client me.
	