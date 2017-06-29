tests-private
testSetFileName
	command := self newObject.
	self initializeCommandToTestSetFileName.
	command setFileName.
	self assert: command fileName size <= DSConstants maxFileNameLenght