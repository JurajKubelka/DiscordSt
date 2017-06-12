private
basicFromJSONObject: json
	"Create an instance from a JSON object (dictionary).
	It expectes a dictionary with op, d, s, and t keys.
	See https://discordapp.com/developers/docs/topics/gateway#gateway-op-codespayloads" 
	^ self subclassResponsibility