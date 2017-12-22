tests
testMorph
	item := self classToTest new.
	item morph: World.
	self assert: item morph equals: World.