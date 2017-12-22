tests
testRegistries
	| registries |
	registries := DSRegistries twoWebhooksAndOneClient.
	item := self classToTest new.
	item registries: registries.
	self assert: item registries equals: registries.