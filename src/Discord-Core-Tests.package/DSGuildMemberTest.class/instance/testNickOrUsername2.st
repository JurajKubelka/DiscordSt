tests
testNickOrUsername2
	object := self classToTest new.
	object nick: 'My Nick'.
	object user: DSUser alice.
	self 
		assert: object nickOrUsername 
		equals: 'My Nick'.