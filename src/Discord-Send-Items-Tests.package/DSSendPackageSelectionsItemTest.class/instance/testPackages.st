tests
testPackages
	| collection |
	collection := DSSelections new.
	item := self classToTest new.
	item packages: collection.
	self assert: item packages equals: collection.