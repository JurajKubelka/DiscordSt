tests
testAsString
	| result |
	builder := self classToTest new.
	builder text: 'a text'.
	result := builder asString.
	self assert: result equals: 'a text'.