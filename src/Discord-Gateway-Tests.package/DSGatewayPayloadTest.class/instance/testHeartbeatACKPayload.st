instance creation
testHeartbeatACKPayload
	payload := self gatewayPayloadClass fromString: self heartbeatACKPayloadString.
	self assert: payload isHeartbeatACK.
	self assert: payload code equals: 11.
	self assert: payload eventData equals: 42.
	self assert: payload eventName equals: 'NAME'.
	self assert: payload sequence equals: 21