initialization
initializeUsingJsonObject: jsonObject 
	"Initialize the instance using a JSON object.
	jsonObject is a Dictionary."
	self initializeUsingJsonDictionary: jsonObject.
	self image: (DSEmbedImage fromJsonObject: self image api: self api).
	self thumbnail: (DSEmbedThumbnail fromJsonObject: self thumbnail api: self api).
	self footer: (DSEmbedFooter fromJsonObject: self footer api: self api).
	self fieldObjects: (DSEmbedField collectionFromJsonObject: self fieldObjects).