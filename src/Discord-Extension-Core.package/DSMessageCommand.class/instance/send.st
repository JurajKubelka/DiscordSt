private
send
	"Inform the object that called me that the information is ready."
	self onAccept ifNotNil: [ :aBlock | aBlock cull: self ]