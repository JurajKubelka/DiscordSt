*Discord-Extension-Core-Tests
testIsFuelObject
	object := self newObjectToTest 
		embeds: (Array with: (self newEmbedObject
			fieldName: DSSendCommand fuelFieldName 
			value: DSSendObjectCommand commandName;
			yourself));
		yourself.
	self assert: object isFuelObject