public
send
	"Send message to a speficic channel.
	The method expects that message text, object, channel, and client objects are set."
	self client
		message: self message;
		fileName: self fileName fuelObject: self object;
		sendTo: self channel.