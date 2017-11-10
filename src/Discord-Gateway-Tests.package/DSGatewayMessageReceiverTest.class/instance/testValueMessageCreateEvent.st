tests
testValueMessageCreateEvent
	| results |
	results := OrderedCollection new.
	receiver := self newMessageReceiver.
	receiver api: self newGateway.
	receiver api messageCreateBlock: [ :msg | results add: msg ].
	receiver value: self dispatchMessageCreatePayloadString.
	self assert: results size equals: 1.
	self assert: results first isMessage.
	self assert: receiver api sequenceNumber equals: 5.