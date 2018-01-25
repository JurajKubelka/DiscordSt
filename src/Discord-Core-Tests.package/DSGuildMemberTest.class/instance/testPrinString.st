tests
testPrinString
	object := self classToTest basic.
	self 
		assert: object printString isString
		description: 'Should return a String'.
	self 
		assert: (object printString includesSubstring: 'this users guild nickname')
		description: 'Should display nick'