tests
testOneMorphPreview
	morph := self classToTest randomMorph.
	self assert: morph submorphs size equals: 2.
	self assert: morph submorphs second isSelected.
	self assert: morph submorphs second labelMorph hasScreenshot.
	