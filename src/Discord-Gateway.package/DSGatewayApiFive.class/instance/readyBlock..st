event registration
readyBlock: oneArgBlock 
	"Set a block that is executed when READY event is received."
	self cacheAt: #readyBlock put: oneArgBlock