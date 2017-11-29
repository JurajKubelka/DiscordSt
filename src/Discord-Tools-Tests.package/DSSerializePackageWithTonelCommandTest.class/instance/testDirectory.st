tests
testDirectory
	| command result |
	command := self classToTest new.
	command package: self class package.
	result := command execute; directory.
	self assert: result notNil.
	self assert: result isDirectory.
	self assert: result basename equals: self class package name.