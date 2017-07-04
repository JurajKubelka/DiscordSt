private
serializeObject: anObject
	"Serialize an object as a byte array using FUEL.
	It returns bytes representing the serialized object."
	^ DSUtility serializeToByteArray: anObject 