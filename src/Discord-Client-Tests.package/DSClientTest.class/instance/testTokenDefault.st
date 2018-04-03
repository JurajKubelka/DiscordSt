tests
testTokenDefault
	"Default token should be nil."
	client := self newClient.
	self assert: client token isEmpty.