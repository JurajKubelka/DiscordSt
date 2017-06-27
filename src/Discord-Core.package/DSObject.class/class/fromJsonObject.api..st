instance creation
fromJsonObject: jsonObject api: restApi
	"Return an instance from a JSON object.
	jsonObject can be a Dictionary, Array, or a primitive value."
	jsonObject ifNil: [ ^ jsonObject ].
	^ self new 
		api: restApi;
		initializeUsingJsonObject: jsonObject;
		yourself