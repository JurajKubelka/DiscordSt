instance creation
fromString: payloadString 
	"Create an instance from the payloadString"
	^ self fromJSONObject: (DSJSONApiWriter fromString: payloadString)