event registration
messageUpdateBlock: oneArgBlock 
	"Set a block that is executed when MESSAGE_UPDATE event is received."
	self cacheAt: #messageUpdateEvent put: oneArgBlock