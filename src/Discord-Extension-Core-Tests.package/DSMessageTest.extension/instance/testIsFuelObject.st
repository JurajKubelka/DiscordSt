*Discord-Extension-Core-Tests
testIsFuelObject
	object := self newObject 
		embeds: (Array with: (self newEmbedObject
			fieldName: DSSendCommand fuelFieldName 
			value: DSSendObjectCommand commandName;
			yourself));
		yourself.
	self assert: object isFuelObject