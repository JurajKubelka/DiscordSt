tests
testPrintOnDefault
	package := self newInstanceToBeTested.
	self assert: package printString equals: 'Package: <nameless> with no experts'.