tests-accessing
testDeveloper
	developer := self newInstanceToBeTested.
	developer developer: 'name one'.
	self assert: developer developer equals: 'name one'.