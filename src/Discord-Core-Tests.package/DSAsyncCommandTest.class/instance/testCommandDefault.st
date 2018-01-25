tests
testCommandDefault
	command := self classToTest new.
	self assert: command command notNil.