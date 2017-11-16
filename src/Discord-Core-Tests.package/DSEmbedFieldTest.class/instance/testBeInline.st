tests
testBeInline
	object := self newObjectToTest beInline; yourself.
	self assert: object isInline