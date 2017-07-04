adding
addFileName: aString fuelObject: anObject 
	"Serialize object using FUEL and add post materialization inspect action."
	| serializer stream bytes |
	serializer := FLSerializer newDefault.
	serializer showProgress.
	serializer addPostMaterializationAction: [ :materialization | materialization root inspect ].
	stream :=  WriteStream on: (ByteArray new: 100).
	serializer serialize: anObject on: stream.
	bytes := stream contents.
	self addFileName: aString bytes: bytes