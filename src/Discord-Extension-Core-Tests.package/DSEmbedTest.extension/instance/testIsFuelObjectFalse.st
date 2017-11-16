*Discord-Extension-Core-Tests
testIsFuelObjectFalse
	object := self newObjectToTest 
		fieldName: DSSendCommand fuelFieldName 
		value: nil;
		yourself.
	self deny: object isFuelObject