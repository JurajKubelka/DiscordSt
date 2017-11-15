tests-accessing
testChildrenDefault
	package := self newInstanceToBeTested.
	self assert: package children isEmpty.