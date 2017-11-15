adding
addFileName: aString fuelObject: anObject 
	"Serialize object using FUEL and add post materialization inspect action."
	| bytes |
	bytes := DSUtility serializeToByteArray: anObject.
	self addFileName: aString bytes: bytes