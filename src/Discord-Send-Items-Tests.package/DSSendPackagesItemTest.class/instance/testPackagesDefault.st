tests
testPackagesDefault
	item := self classToTest new.
	self assert: item packages isEmpty.