tests
testPackagesDefault
	attachment := self classToTest new.
	self assert: attachment packages isEmpty.