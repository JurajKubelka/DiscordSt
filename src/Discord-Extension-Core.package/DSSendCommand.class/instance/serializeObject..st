private
serializeObject: anObject
	"Serialize an object as a byte array using FUEL.
	It returns bytes representing the serialized object."
	| stream serializer |
	stream := ByteArray new writeStream.
	serializer := FLSerializer newDefault.		
	serializer
		showProgress;
		serialize: anObject
		on: stream.
	^ stream contents.