tests
testValueMessageUpdateEvent
	| results |
	results := OrderedCollection new.
	receiver := self newMessageReceiverInitialized.
	receiver announcer when: DSGatewayMessageUpdateAnnouncement do: [ :ann | results add: ann ].
	receiver value: self gatewayModelJsonMapping jsonMessageUpdatePayload.
	self assert: results size equals: 1.
	self assert: results first class equals: DSGatewayMessageUpdateAnnouncement.
	self assert: receiver sequenceNumber equals: 5.