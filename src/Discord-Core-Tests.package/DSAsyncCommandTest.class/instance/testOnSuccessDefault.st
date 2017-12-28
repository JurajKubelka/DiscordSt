tests
testOnSuccessDefault
	command := self classToTest new.
	self assert: command onSuccess notNil.