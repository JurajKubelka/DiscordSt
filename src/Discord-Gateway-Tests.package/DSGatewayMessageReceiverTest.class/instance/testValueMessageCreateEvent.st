tests
testValueMessageCreateEvent
	| results |
	results := OrderedCollection new.
	receiver := self newMessageReceiverInitialized.
	receiver announcer when: DSGatewayMessageCreateAnnouncement do: [ :ann | results add: ann ].
	receiver value: self gatewayModelJsonMapping jsonMessageCreatePayload.
	self assert: results size equals: 1.
	self assert: results first class equals: DSGatewayMessageCreateAnnouncement.
	self assert: receiver sequenceNumber equals: 4.