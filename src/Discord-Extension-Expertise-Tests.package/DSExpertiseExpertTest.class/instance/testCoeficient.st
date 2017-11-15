tests-accessing
testCoeficient
	developer := self newInstanceToBeTested.
	developer coeficient: 42.
	self assert: developer coeficient equals: 42.