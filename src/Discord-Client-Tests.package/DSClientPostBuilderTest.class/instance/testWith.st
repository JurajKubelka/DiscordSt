tests
testWith
	| results returnValue |
	results := OrderedCollection new.
	builder := self newInstanceToBeTested.
	returnValue := builder with: [ :aBuilder | results add: aBuilder. 42 ].
	self assert: results size equals: 1.
	self assert: results first == builder.
	self assert: returnValue equals: 42.