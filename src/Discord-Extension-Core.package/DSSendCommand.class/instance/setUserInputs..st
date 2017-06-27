private
setUserInputs: aDSMessageCommand 
	"Set user inputs, filled by a user."
	self 
		text: aDSMessageCommand text;
		channel: aDSMessageCommand channel;
		addAllInfo: aDSMessageCommand info