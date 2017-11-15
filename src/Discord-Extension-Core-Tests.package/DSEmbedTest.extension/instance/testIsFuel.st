*Discord-Extension-Core-Tests
testIsFuel
	object := self newObject 
		fieldName: DSSendCommand fuelFieldName value: nil;
		yourself.
	self assert: object isFuel