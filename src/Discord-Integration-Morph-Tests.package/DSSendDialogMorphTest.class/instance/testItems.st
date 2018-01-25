tests
testItems
	morph := self classToTest new.
	morph items: DSSendItems new.
	self assert: morph submorphs first class equals: DSSendUserTextMessageItemMorph.