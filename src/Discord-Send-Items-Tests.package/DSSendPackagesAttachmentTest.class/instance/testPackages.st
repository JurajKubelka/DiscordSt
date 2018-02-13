tests
testPackages
	| collection |
	collection := DSPackages new.
	attachment := self classToTest new.
	attachment packages: collection.
	self assert: attachment packages equals: collection.