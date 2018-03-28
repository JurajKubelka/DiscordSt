tests
testIsEnabled
	selection := self classToTest new.
	selection isEnabled: true.
	self assert: selection isEnabled.