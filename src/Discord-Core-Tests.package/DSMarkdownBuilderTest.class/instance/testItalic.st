tests
testItalic
	| result |
	builder := self classToTest new.
	builder italic: 'italic'.
	result := builder build.
	self assert: result equals: '*italic*'.