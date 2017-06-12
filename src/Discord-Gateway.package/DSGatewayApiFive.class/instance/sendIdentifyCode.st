private
sendIdentifyCode
	"Send the OP 2 Identify message to a Discord Gateway."
	self sendMessage: self identifyPayloadString.
	