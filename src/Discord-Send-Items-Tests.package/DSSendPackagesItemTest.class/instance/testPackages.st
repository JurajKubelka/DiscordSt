tests
testPackages
	| collection |
	collection := DSPackages new.
	item := self classToTest new.
	item packages: collection.
	self assert: item packages equals: collection.