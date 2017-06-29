private - sending
fuelFieldValueFrom: aDSGuildTextChannel messages: aCollection 
	"Return a FUEL field value. 
	It is composed of a command name, and a link to pharo link server.
	This server includes an instructions how to download the serialized data to a Pharo image."
	^ DSPharoLinkGenerator new
		channel: aDSGuildTextChannel;
		previousMessages: aCollection;
		fuelValue: self commandName;
		generate