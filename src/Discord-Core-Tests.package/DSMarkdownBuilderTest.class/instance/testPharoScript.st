tests
testPharoScript
	| result |
	builder := self classToTest new.
	builder pharoScript: 'Smalltalk os version.'.
	result := builder build.
	self 
		assert: result 
		equals: (String cr join: #( '```Smalltalk' 'Smalltalk os version.' '```' '')).