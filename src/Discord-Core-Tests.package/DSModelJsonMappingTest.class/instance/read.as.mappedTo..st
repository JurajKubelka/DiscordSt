utility
read: jsonString as: schema mappedTo: mappingMessage
	"Return an object that is represented by the JSON string."
	<return: #DSObject>
	^ self classToTest read: schema withMapping: mappingMessage on: jsonString readStream