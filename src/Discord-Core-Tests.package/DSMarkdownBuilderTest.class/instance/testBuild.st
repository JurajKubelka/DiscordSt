tests
testBuild
	| result |
	builder := self classToTest new.
	result := builder build.
	self assert: result equals: ''.