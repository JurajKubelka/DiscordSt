public
materialize
	"Materialize the attachment data. 
	It is supposed that #data return a ByteArray object."
	^ (self attachments detect: #isFuel ifNone: nil) ifNotNil: #materialize