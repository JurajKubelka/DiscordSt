*Discord-Extension-Core-Tests
testIsFuelObject
	object := self newObject 
		name: DSSendCommand fuelFieldName; 
		value: DSSendObjectCommand commandName;
		yourself.
	self assert: object isFuelObject