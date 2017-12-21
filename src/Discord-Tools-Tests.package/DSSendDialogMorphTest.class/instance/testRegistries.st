running
testRegistries
	| registries |
	registries := DSRegistries empty.
	morph := self classToTest new.
	morph registries: registries.
	self assert: morph registries equals: registries.