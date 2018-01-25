tests
testOnSelectionChangedDo
	| result |
	registries := self classToTest twoWebhooksAndOneClient.
	registries onSelectionChangedDo: [ :ann | result := ann ].
	registries selection: registries first.
	self assert: result class equals: DSRegistrySelectionChangedAnnouncement.
	self assert: result registries equals: registries.
	self assert: result selection equals: registries selection.