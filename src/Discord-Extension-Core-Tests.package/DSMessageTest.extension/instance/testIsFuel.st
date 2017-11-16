*Discord-Extension-Core-Tests
testIsFuel
	object := self newObjectToTest 
		embeds: (Array with: (self newEmbedObject
			fieldName: DSSendCommand fuelFieldName 
			value: nil;
			yourself));
		yourself.
	self assert: object isFuel