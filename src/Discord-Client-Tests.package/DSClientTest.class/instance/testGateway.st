tests
testGateway
	"Gateway should share the same session with REST API."

	client := self newClient.
	self assert: client gatewayApi notNil.
	self assert: client gatewayApi session == client restApi session