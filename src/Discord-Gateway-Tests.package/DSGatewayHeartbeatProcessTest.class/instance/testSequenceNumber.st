tests
testSequenceNumber
	"Set sequence number"
	process := self newGatewayProcess.
	process sequenceNumber: 42.
	self assert: process sequenceNumber equals: 42.
	self assert: process heartbeatString equals: '{"op":1,"d":42}'.
	