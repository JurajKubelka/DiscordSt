*Discord-Extension-Core-Tests
testIsFuelStackFalse
	object := self newObjectToTest 
		name: DSSendCommand fuelFieldName; 
		yourself.
	self deny: object isFuelStack