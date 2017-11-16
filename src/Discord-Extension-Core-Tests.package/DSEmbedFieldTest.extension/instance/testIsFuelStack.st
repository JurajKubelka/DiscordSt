*Discord-Extension-Core-Tests
testIsFuelStack
	object := self newObjectToTest 
		name: DSSendCommand fuelFieldName; 
		value: DSSendStackCommand commandName;
		yourself.
	self assert: object isFuelStack