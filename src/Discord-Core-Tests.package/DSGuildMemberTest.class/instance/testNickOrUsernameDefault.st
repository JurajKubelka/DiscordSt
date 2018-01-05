tests
testNickOrUsernameDefault
	object := self classToTest new.
	self 
		assert: object nickOrUsername 
		equals: '<unknown>'.