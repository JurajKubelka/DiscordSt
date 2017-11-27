tests
testBoldItalic
	| result |
	builder := self classToTest new.
	builder boldItalic: 'bold and italic'.
	result := builder build.
	self assert: result equals: '**_bold and italic_**'.