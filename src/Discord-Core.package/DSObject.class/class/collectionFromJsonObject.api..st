instance creation
collectionFromJsonObject: jsonObjects api: restApi
	"Return a collection of instances from a JSON object.
	jsonObjects is an Array."
	jsonObjects ifNil: [ ^ jsonObjects ].
	^ jsonObjects collect: [ :jsonObject |
		self fromJsonObject: jsonObject api: restApi ] as: self defaultCollection