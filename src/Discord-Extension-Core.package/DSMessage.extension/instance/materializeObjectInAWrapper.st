*Discord-Extension-Core
materializeObjectInAWrapper
	"Materialize the attachment data. 
	It is supposed that #data return a ByteArray object.
	First, a wrapper is materialized, then the object itself."
	^ DSLoadCommand loadMessage: self