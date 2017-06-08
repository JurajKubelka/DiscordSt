execute
execute
	"Send the OP 6 Resume message to a Discord Gateway."
	self api websocket sendMessage: self api resumeMessageString.
	