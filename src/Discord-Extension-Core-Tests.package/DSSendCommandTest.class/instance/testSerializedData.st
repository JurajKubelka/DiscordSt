tests-accessing - wrapper
testSerializedData
	command := self newCommand.
	command serializedData: self anyString.
	self assert: command serializedData equals: self anyString.