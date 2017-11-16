tests-private
testSetFileName
	command := self newObjectToTest.
	self initializeCommandToTestSetFileName.
	command setFileName.
	self assert: command fileName size <= DSConstants maxFileNameLenght