instance creation
fromJsonString: jsonString api: aDSApi
	"Return an instance initialized by jsonString, and set the api object."
	^ (self fromJsonObject: (STONJSON fromString: jsonString))
		api: aDSApi;
		yourself