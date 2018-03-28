tests-accessing
testIsEnabled
	attachment := self classToTest new.
	self assert: (attachment isEnabled or: [ attachment isSelected not ])