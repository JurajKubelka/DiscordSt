test - sending
testSupressNetworkErrors
	"Post JSON entity"
	| response port |
	server := ZnServer startOn: 0.
	port := server serverSocket port.
	server stop.
	client := self classToTest new 
		url: 'http://localhost:', port asString;
		message: self messageString;
		supressNetworkErrors.
	response := client send.
	self assert: response isNil