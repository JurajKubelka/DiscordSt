test - sending
testSupressNetworkErrors2
	"Post multi-part data form entity"
	| response port |
	server := ZnServer startOn: 0.
	port := server serverSocket port.
	server stop.
	client := self classToTest new 
		url: 'http://localhost:', port asString;
		message: self messageString;
		fileName: self anyString bytes: self bytes;
		supressNetworkErrors.
	response := client send.
	self assert: response isNil