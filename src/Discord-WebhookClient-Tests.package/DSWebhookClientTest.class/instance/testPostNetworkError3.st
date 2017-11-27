test - sending
testPostNetworkError3
	"Post multi-part data form entity"
	| port |
	server := ZnServer startOn: 0.
	port := server serverSocket port.
	server stop.
	client := self classToTest new 
		url: 'http://localhost:', port asString;
		message: self messageString;
		fileName: self anyString bytes: self bytes.
	self should: [ client send ] raise: ConnectionTimedOut.