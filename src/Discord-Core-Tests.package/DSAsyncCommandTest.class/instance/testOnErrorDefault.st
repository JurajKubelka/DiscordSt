tests
testOnErrorDefault
	command := self classToTest new.
	self assert: command onError notNil.