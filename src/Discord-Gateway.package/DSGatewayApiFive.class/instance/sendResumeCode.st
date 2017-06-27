private
sendResumeCode
	"Send the OP 6 Resume message to a Discord Gateway."
	self sendMessage: self resumePayloadString.
	