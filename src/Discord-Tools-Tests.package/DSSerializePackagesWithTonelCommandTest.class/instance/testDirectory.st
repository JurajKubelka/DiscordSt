tests
testDirectory
	| command result |
	command := self classToTest new.
	command packages: { self class package. self classToTest package }.
	result := command execute; directory.
	self assert: result notNil.
	self assert: result isDirectory.
	self assert: result directories size equals: 2.
	self assert: (result directories anySatisfy: [ :directory | directory basename = self class package name ]).
	self assert: (result directories anySatisfy: [ :directory | directory basename = self classToTest package name ]).