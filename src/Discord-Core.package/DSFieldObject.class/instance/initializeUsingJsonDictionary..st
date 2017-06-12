initialization
initializeUsingJsonDictionary: jsonObject 
	"Initialize the instance using a JSON object.
	jsonObject is a Dictionary."
	jsonObject keysAndValuesDo: [ :key :value |
		self fieldsAt: key put: value ]