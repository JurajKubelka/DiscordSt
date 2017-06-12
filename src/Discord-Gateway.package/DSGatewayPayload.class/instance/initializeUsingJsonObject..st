initialization
initializeUsingJsonObject: json 
	"Initialize an instance from a JSON object (dictionary).
	It expectes a dictionary with op, d, s, and t keys.
	See https://discordapp.com/developers/docs/topics/gateway#gateway-op-codespayloads" 
	self
		code: (json at: #op ifAbsent: nil);
		eventData: (json at: #d ifAbsent: nil);
		sequence: (json at: #s ifAbsent: nil);
		eventName: (json at: #t ifAbsent: nil);
		yourself