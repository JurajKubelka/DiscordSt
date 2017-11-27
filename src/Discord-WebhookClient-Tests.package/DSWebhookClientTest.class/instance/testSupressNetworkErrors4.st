test - sending
testSupressNetworkErrors4
	"Post multi-part data form entity"
	| response port |
	server := ZnServer startOn: 0.
	port := server serverSocket port.
	client := self classToTest new 
		url: 'http://localhost:', port asString, '/doesNotExists';
		message: self messageString;
		fileName: self anyString bytes: self bytes;
		supressNetworkErrors.
	response := client send.
	self assert: response isError