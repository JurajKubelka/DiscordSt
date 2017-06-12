instance creation
fromJsonObject: jsonObject 
	"Return an instance from a JSON object.
	jsonObject can be a Dictionary, Array, or a primitive value."
	^ self new 
		initializeUsingJsonObject: jsonObject; 
		yourself