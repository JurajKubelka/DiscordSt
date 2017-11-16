*Discord-Extension-Core-Tests
testIsFuelStackFalse
	object := self newObjectToTest 
		fieldName: DSSendCommand fuelFieldName 
		value: self anyString;
		yourself.
	self deny: object isFuelStack