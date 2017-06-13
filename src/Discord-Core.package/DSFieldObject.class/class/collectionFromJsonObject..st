instance creation
collectionFromJsonObject: jsonObjects 
	"Return a collection of instances from a JSON object.
	jsonObjects is an Array."
	^ jsonObjects collect: [ :jsonObject |
		self fromJsonObject: jsonObject ] as: self defaultCollection