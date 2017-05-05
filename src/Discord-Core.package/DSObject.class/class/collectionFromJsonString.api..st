instance creation
collectionFromJsonString: jsonString api: aDSApi
	"Return a collection of instances initialized by jsonString, and set the api object."
	^ (self collectionFromJsonObject: (STONJSON fromString: jsonString))
		do: [ :object | object api: aDSApi ]