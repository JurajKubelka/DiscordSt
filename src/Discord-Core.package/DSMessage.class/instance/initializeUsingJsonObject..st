initialization
initializeUsingJsonObject: jsonObject 
	"Initialize the instance using a JSON object.
	jsonObject is a Dictionary."
	self initializeUsingJsonDictionary: jsonObject.
	self author: (DSUser fromJsonObject: self author api: self api).
	self attachments: (DSAttachment collectionFromJsonObject: self attachments api: self api).
	self embeds: (DSEmbed collectionFromJsonObject: self embeds api: self api)