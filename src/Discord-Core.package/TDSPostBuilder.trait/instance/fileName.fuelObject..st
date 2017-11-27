protocol - attachment
fileName: aString fuelObject: anObject 
	"Add a serialized object, using FUEL serialization library"
	self 
		fileName: aString
		bytes: (DSUtility serializeToByteArray: anObject)