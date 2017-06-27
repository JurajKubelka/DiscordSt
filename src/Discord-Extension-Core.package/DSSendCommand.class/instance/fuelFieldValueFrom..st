private
fuelFieldValueFrom: aDSGuildTextChannel 
	"Return a FUEL field value. 
	It is composed of a command name, and a link to pharo link server.
	This server includes an instructions how to download the serialized data to a Pharo image."
	| url |
	url := 'https://pharo-link.herokuapp.com/' asZnUrl.
	url := url ? ('fuel' -> self commandName) 
		& ('id' -> (self customMessageIdFrom: aDSGuildTextChannel)).
	^ '[Download to Pharo](', url asString, ')'