tests
testBold
	| result |
	builder := self classToTest new.
	builder bold: 'bold'.
	result := builder build.
	self assert: result equals: '**bold**'.