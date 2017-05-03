initialization
initializeUsingJsonObject: jsonObject 
	"Initialize the instance using a JSON object.
	jsonObject can be a Dictionary, Array, or a primitive value."
	jsonObject keysAndValuesDo: [ :key :value |
		self fieldsAt: key put: value ]