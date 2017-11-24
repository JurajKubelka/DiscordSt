tests
testSpace
	| result |
	builder := self classToTest new.
	builder space.
	result := builder build.
	self assert: result equals: String space.