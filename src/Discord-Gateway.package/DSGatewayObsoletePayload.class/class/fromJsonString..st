instance creation
fromJsonString: payloadString 
	"Create an instance from the payloadString"
	^ self fromJsonObject: (DSJSONApiWriter fromString: payloadString)