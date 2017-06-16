execute
execute
	"Steps to send a stack to a Discord channel:
	- set filename
	- serialize the stack
	- create textural and grafical representation
	- ask for a description (message) and the Discord channel and send"
	self 
		setFileName;
		serializeStack;
		createHumanReadableTextRepresentation;
		createHumanReadableGraphicalRepresentation;
		loginIfNecessary;
		askForDescriptionAndSend