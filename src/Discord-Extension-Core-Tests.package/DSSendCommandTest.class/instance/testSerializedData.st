tests-accessing - wrapper
testSerializedData
	command := self newObject.
	command serializedData: self anyString.
	self assert: command serializedData equals: self anyString.