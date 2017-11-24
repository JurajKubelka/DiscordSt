tests
testInlineScript
	| result |
	builder := self classToTest new.
	builder inlineScript: 'Behavior new'.
	result := builder build.
	self assert: result equals: '`Behavior new`'.