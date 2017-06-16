protocol
materialize
	"Materialize the stack trace data. 
	It is supposed that #serializedStack return a ByteArray object."
	^ FLMaterializer materializeFromByteArray: self serializedData