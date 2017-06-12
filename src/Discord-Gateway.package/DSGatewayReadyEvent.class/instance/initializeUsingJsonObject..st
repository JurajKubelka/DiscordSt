initialization
initializeUsingJsonObject: jsonObject 
	"Initialize the instance using a JSON object.
	jsonObject is a Dictionary."
	self initializeUsingJsonDictionary: jsonObject.
	self fieldsAt: #user put: (DSUser fromJsonObject: self user).	