*Discord-Extension-Core-Tests
testIsFuelStackFalse
	object := self newObject 
		name: DSSendCommand fuelFieldName; 
		yourself.
	self deny: object isFuelStack