private - commands
sendIdentifyCode
	"Sent the OP 2 Identify message to a Discord Gateway."
	self websocket sendMessage: self identifyPayloadString.
	