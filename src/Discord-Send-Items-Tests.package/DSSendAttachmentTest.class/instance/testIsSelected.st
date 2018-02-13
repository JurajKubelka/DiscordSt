tests-accessing
testIsSelected
	attachment := self classToTest new.
	self assert: (attachment isSelected or: [ attachment isSelected not ])