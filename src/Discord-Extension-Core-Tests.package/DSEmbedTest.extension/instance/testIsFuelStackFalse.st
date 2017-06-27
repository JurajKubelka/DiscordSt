*Discord-Extension-Core-Tests
testIsFuelStackFalse
	object := self newObject 
		fieldName: DSSendCommand fuelFieldName 
		value: self anyString;
		yourself.
	self deny: object isFuelStack