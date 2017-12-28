tests
testDefaultIsSelected
	info := self classToTest new.
	self assert: info isSelected.
	