tests
testSubmorphsOrder
	morph := self classToTest textScreenshotsAndRegistries.
	self assert: morph submorphs size equals: 3.
	self assert: morph submorphs first class equals: DSSendUserTextMessageItemMorph.
	self assert: morph submorphs second class equals: DSSendAttachmentsItemMorph.
	self assert: morph submorphs third class equals: DSSendRegistriesItemMorph.