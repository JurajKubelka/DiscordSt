instance creation
fromJsonString: jsonString 
	"Return an instance initialized by jsonString."
	^ self fromJsonObject: (STONJSON fromString: jsonString)