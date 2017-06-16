private
send
	"Send message to a speficic channel.
	The method expects that message text, object, channel, and client objects are set."
	self client message: self text.
	self imageForm ifNotNil: [ self client 
		fileName: self imageName form: self imageForm ].
	self client 
		fileName: self fileName bytes: self serializedWrappedObject;
		sendTo: self channel.