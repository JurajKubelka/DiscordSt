tests
testHeartbeatString2
	"Heartbeat JSON object with default sequence number"
	process := self newGatewayProcess.
	process sequenceNumber: 2.
	self assert: process heartbeatString equals: '{"op":1,"d":2}'.
	