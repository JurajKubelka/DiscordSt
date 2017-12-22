tests
testMorphDefault
	item := self classToTest new.
	self assert: item morph equals: World.