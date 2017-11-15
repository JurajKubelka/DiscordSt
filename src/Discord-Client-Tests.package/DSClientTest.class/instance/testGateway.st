tests
testGateway
	"Gateway should share the same session with REST API."

	client := self newClient.
	self assert: client gateway notNil.
	self assert: client gateway session == client restApi session