event registration
messageCreateBlock
	"Get a block that is executed when MESSAGE_CREATE event is received."
	^ self cacheAt: #messageCreateEvent ifAbsent: [ [ :message | message ] ]