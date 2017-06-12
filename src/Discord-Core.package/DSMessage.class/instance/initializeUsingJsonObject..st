initialization
initializeUsingJsonObject: jsonObject 
	"Initialize the instance using a JSON object.
	jsonObject is a Dictionary."
	self initializeUsingJsonDictionary: jsonObject.
	self author: (DSUser fromJsonObject: self author).