tests
testHeartbeatString
	"Heartbeat JSON object with default sequence number"
	process := self newGatewayProcess.
	self assert: process heartbeatString equals: '{"op":1,"d":null}'.
	