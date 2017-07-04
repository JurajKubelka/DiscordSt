protocol
materialize
	"Materialize the stack trace data. 
	It is supposed that #serializedStack return a ByteArray object."
	^ DSUtility materializeFromByteArray: self serializedData