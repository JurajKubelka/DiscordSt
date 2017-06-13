instance creation
collectionFromJsonString: jsonString 
	"Return a collection of instances initialized by jsonString."
	^ self collectionFromJsonObject: (STONJSON fromString: jsonString) 