tests
testText
	| result |
	builder := self classToTest new.
	builder text: 'a text'.
	result := builder build.
	self assert: result equals: 'a text'.