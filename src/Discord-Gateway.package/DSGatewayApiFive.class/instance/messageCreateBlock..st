event handling
messageCreateBlock: oneArgBlock 
	"Set a block that is executed when MESSAGE_CREATE event is received."
	self cacheAt: #messageCreateEvent put: oneArgBlock