*Discord-Extension-Core-Tests
testIsFuelObject
	object := self newObjectToTest 
		name: DSSendCommand fuelFieldName; 
		value: DSSendObjectCommand commandName;
		yourself.
	self assert: object isFuelObject