tests
testIsSelected
	morph := self classToTest new.
	self assert: morph isSelected.
	self assert: morph submorphs first buttonMorph selected.
	morph isSelected: false.
	self deny: morph isSelected.
	self deny: morph submorphs first buttonMorph selected.
