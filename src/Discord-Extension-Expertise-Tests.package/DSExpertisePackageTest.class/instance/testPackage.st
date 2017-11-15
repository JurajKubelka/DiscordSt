tests-accessing
testPackage
	package := self newInstanceToBeTested.
	package package: 'Package-One'.
	self assert: package package equals: 'Package-One'.