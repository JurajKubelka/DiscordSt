tests
testDefaultValue
	info := self classToTest new.
	self assert: info value isNil.	