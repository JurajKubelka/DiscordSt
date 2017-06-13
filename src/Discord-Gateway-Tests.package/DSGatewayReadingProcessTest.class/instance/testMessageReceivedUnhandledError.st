tests
testMessageReceivedUnhandledError
	| received |
	process := self newGatewayProcess.
	received := nil.
	process receiver: [ :value | received := value. Error signal ].
	self should: [ process messageReceived: 42 ] raise: Error.
	self assert: received equals: 42.