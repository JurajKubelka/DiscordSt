private - sending
send
	"Send message to a speficic channel.
	The method expects that message text, object, channel, and client objects are set."

	^ self sendSeparatedData: self serializedWrappedObject