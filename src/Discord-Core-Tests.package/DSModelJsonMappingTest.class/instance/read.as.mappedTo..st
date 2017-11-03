utility
read: jsonString as: schema mappedTo: mappingMessage
	"Return an object that is represented by the JSON string."
	<return: #DSObject>
	| reader |
	reader := NeoJSONReader on: jsonString readStream.
	DSModelJsonMapping perform: mappingMessage with: reader.
	^ reader nextAs: schema.