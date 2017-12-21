running
testRegistriesSubscription
	| registries |
	registries := DSRegistries empty.
	morph := self classToTest new.
	self deny: (registries announcer hasSubscriber: morph).
	morph registries: registries.
	self assert: (registries announcer hasSubscriber: morph).