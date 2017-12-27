tests
testWithObjectAndCollectionClasses
	morph := self classToTest withObjectAndCollectionClasses.
	self assert: morph submorphs first numberOfRows equals: 5.