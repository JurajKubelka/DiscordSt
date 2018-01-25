tests
testItem3
	| item |
	item := self itemClassToTest new.
	morph := self classToTest new.
	morph item: item.
	self assert: morph textModel getString isEmpty.
	morph textModel setText: 'message'.
	self assert: item text equals: 'message'.