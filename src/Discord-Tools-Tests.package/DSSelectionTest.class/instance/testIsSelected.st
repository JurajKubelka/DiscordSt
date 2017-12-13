tests
testIsSelected
	selection := self classToTest new.
	selection isSelected: true.
	self assert: selection isSelected.