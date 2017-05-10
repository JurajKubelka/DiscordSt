tests
testState
	"Check default Gateway state"
	api := self newApi. 
	self assert: api state class equals: DSGatewayDisconnectedState.
	