tests-printing
testPrintOn
	developer := self newInstanceToBeTested.
	developer 
		developer: 'Alice';
		coeficient: 42.234434323.
	self assert: developer printString equals: 'Expert: Alice 42.2%'.