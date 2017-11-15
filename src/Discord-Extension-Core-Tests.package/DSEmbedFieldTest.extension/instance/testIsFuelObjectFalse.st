*Discord-Extension-Core-Tests
testIsFuelObjectFalse
	object := self newObject 
		name: DSSendCommand fuelFieldName; 
		yourself.
	self deny: object isFuelObject