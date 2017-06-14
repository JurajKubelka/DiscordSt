public
materialize
	"Materialize the attachment data. 
	It is supposed that #data return a ByteArray object."
	^ FLMaterializer materializeFromByteArray: self data