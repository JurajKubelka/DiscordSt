tests
testMessageReceived
	| received |
	process := self newGatewayProcess.
	received := nil.
	process receiver: [ :value | received := value. ].
	process messageReceived: 42.
	self assert: received equals: 42.