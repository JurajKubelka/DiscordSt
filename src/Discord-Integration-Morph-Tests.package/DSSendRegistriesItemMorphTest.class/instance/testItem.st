tests
testItem
	| item |
	item := self itemClassToTest twoWebhooksAndOneClient.
	morph := self classToTest new.
	morph item: item.
	self assert: morph submorphs first registries equals: item registries.