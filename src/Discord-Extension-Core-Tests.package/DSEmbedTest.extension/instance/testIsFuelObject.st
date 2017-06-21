*Discord-Extension-Core-Tests
testIsFuelObject
	object := self newObject 
		fieldName: DSSendCommand fuelFieldName 
		value: DSSendObjectCommand commandName;
		yourself.
	self assert: object isFuelObject