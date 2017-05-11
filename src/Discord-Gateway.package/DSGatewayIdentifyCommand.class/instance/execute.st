execute
execute
	"Sent the OP 2 Identify message to a Discord Gateway."
	self api websocket sendMessage: self api identifyMessageString.
	