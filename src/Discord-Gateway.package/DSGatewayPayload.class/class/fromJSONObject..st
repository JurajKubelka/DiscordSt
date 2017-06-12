instance creation
fromJSONObject: json
	"Create an instance from a JSON object (dictionary).
	It expectes a dictionary with op, d, s, and t keys.
	See https://discordapp.com/developers/docs/topics/gateway#gateway-op-codespayloads" 
	| code theClass |
	code := json at: #op ifAbsent: [ ^ self incorrectPayloadObjectError: json ].
	theClass := self correspondingClass: code.
	^ theClass basicFromJSONObject: json.
	