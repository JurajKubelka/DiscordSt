tests
testPrintOnTwoExperts
	| expertise |
	package := self newInstanceToBeTested.
	expertise := DSExpertiseExpert new.
	expertise
		developer: 'Alice';
		coeficient: 42.234434323.
	package 
		expertise: (Array with: expertise with: expertise);
		package: 'Package-One'.
	self assert: package printString equals: 'Package: Package-One with 2 experts'.