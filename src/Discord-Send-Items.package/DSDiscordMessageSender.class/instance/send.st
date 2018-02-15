actions
send
	"Build a messages based on items and send it using registry."
	self informAboutStartSending.
	self sendSharedData.
	self sendMainMessage.
	self informAboutEndSending.