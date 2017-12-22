tests
testItem2
	| item |
	item := self itemClassToTest loremIpsum.
	morph := self classToTest new.
	morph item: item.
	self assert: morph textModel getString equals: item text.