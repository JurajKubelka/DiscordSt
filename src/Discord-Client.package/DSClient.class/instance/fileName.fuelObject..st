public
fileName: aString fuelObject: anObject 
	"Send a serialized object, using FUEL serialization library"
	self ensureDataPost addFileName: aString fuelObject: anObject 