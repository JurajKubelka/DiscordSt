tests-printing
testPrintOnDefault
	developer := self newInstanceToBeTested.
	self assert: developer printString equals: 'Expert: <nameless> x%'.