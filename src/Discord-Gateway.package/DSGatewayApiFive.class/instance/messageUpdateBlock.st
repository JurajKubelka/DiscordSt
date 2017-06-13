event registration
messageUpdateBlock	
	"Get a block that is executed when MESSAGE_UPDATE event is received."
	^ self cacheAt: #messageUpdateEvent ifAbsent: [ [ :message | message ] ]