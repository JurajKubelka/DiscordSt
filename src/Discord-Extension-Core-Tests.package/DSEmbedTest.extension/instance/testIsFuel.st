*Discord-Extension-Core-Tests
testIsFuel
	object := self newObjectToTest 
		fieldName: DSSendCommand fuelFieldName value: nil;
		yourself.
	self assert: object isFuel