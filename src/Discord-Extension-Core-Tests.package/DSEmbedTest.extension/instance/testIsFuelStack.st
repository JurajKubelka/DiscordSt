*Discord-Extension-Core-Tests
testIsFuelStack
	object := self newObjectToTest 
		fieldName: DSSendCommand fuelFieldName 
		value: DSSendStackCommand commandName;
		yourself.
	self assert: object isFuelStack