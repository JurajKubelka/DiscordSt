tests
testItem
	| item |
	morph := self classToTest new.
	item := self itemClassToTest new.
	morph item: item.
	self assert: morph item equals: item.