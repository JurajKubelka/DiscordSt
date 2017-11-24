tests
testCr
	| result |
	builder := self classToTest new.
	builder cr.
	result := builder build.
	self assert: result equals: String cr.