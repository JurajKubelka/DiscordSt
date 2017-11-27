tests
testStrikethrough
	| result |
	builder := self classToTest new.
	builder strikeThrough: 'strikethrough'.
	result := builder build.
	self assert: result equals: '~~strikethrough~~'.