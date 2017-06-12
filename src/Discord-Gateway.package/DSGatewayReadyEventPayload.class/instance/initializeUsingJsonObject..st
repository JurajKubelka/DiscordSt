initialization
initializeUsingJsonObject: json 
	"Initialize an instance from a JSON object (dictionary).
	It expectes a dictionary with op, d, s, and t keys.
	See https://discordapp.com/developers/docs/topics/gateway#gateway-op-codespayloads" 
	super initializeUsingJsonObject: json.
	self
		eventData: (json at: #d ifPresent: [ :jsonEvent | DSGatewayReadyEvent fromJsonObject: jsonEvent ] ifAbsent: nil);
		yourself