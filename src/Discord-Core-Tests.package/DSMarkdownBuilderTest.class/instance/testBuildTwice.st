tests
testBuildTwice
	| result |
	builder := self classToTest new.
	builder text: 'a text'.
	result := builder build.
	result := builder build.
	self assert: result equals: ''.