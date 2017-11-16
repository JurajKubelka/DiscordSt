tests-accessing - wrapper
testSerializedData
	command := self newObjectToTest.
	command serializedData: self anyString.
	self assert: command serializedData equals: self anyString.