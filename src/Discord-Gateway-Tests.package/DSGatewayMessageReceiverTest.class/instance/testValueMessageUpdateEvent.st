tests
testValueMessageUpdateEvent
	| results |
	results := OrderedCollection new.
	receiver := self newMessageReceiver.
	receiver api: self newGatewayApi.
	receiver api messageUpdateBlock: [ :msg | results add: msg ].
	receiver value: self dispatchMessageUpdatePayloadString.
	self assert: results size equals: 1.
	self assert: results first isMessage.
	self assert: receiver api sequenceNumber equals: 7.