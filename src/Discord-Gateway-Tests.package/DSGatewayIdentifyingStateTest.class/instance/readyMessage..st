mock
readyMessage: json 
	"Set Ready Event message"
	self serverRequests
		add: #readyEvent;
		add: json