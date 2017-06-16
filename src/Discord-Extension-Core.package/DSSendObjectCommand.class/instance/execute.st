execute
execute
	"Send an object to a Discord channel using FUEL serialization."
	self 
		setFileName;
		createHumanReadableGraphicalRepresentation;
		loginIfNecessary;
		askForDescriptionAndSend