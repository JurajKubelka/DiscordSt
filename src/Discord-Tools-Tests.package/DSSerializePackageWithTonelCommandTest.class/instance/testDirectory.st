tests
testDirectory
	| command result |
	command := self classToTest new.
	command package: self class package.
	result := command
		execute;
		directory.
	self assert: result notNil.
	self assert: result isDirectory.
	self assert: result directories size equals: 1.
	self
		assert:
			(result directoryNames
				anySatisfy: [ :directoryName | directoryName = self class package name ])
		description: [ 'Missing directory named ' , self class package name ]