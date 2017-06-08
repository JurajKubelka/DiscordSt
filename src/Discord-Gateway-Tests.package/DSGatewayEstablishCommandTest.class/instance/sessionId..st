mock
sessionId: aString 
	"Set Gateway sessions id"
	self serverRequests
		add: #sessionId;
		add: aString