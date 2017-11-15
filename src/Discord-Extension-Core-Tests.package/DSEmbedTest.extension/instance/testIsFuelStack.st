*Discord-Extension-Core-Tests
testIsFuelStack
	object := self newObject 
		fieldName: DSSendCommand fuelFieldName 
		value: DSSendStackCommand commandName;
		yourself.
	self assert: object isFuelStack