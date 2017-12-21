running
testRegistriesUnsubscription
	| registries |
	registries := DSRegistries empty.
	morph := self classToTest new.
	morph registries: registries.
	self assert: (registries announcer hasSubscriber: morph).
	window := morph openInWindow.
	window delete.
	window := nil.
	self deny: (registries announcer hasSubscriber: morph).
