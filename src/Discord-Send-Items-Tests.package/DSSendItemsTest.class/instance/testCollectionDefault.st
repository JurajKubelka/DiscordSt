tests
testCollectionDefault
	items := self classToTest new.
	self assert: items collection size equals: items defaultCollection size.