tests
testNickOrUsername
	object := self classToTest new.
	object user: DSUser alice.
	self 
		assert: object nickOrUsername 
		equals: 'Alice'.