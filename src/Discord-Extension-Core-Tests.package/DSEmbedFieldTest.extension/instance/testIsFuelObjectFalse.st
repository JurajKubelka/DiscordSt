*Discord-Extension-Core-Tests
testIsFuelObjectFalse
	object := self newObjectToTest 
		name: DSSendCommand fuelFieldName; 
		yourself.
	self deny: object isFuelObject