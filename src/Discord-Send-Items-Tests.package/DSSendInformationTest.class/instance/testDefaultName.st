tests
testDefaultName
	info := self classToTest new.
	self assert: info name notNil.
	self assert: info name isString.
	