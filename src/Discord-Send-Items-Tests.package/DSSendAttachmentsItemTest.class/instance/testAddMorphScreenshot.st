tests-adding
testAddMorphScreenshot
	| morph |
	morph := Morph new.
	item := self classToTest new.
	item addMorphScreenshot: morph.
	self assert: item attachments size equals: 1.
	self assert: item attachments first screenshots size equals: 1.
	self assert: item attachments first screenshots first morph equals: morph.