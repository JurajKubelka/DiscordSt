*Discord-Extension-Core-Tests
testIsFuelStack
	object := self newObject 
		name: DSSendCommand fuelFieldName; 
		value: DSSendStackCommand commandName;
		yourself.
	self assert: object isFuelStack