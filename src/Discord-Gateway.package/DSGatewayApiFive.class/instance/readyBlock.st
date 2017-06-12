event handling
readyBlock
	"Get a block that is executed when READY event is received."
	^ self cacheAt: #readyBlock ifAbsent: [ [ :message | message ] ]