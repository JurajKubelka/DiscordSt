private
setUserInputs: aDSMessageCommand 
	"Set user inputs."
	self 
		description: aDSMessageCommand text;
		channel: aDSMessageCommand channel;
		guild: aDSMessageCommand guild;
		addAllInfo: aDSMessageCommand info