tests
testSelection
	registries := self classToTest twoWebhooksAndOneClient.
	registries selection: registries first.
	self assert: registries selection equals: registries first.