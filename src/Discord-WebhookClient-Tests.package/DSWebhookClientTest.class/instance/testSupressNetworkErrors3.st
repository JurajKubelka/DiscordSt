test - sending
testSupressNetworkErrors3
	"Post JSON entity"
	| response port |
	server := ZnServer startOn: 0.
	port := server serverSocket port.
	client := self classToTest new 
		url: 'http://localhost:', port asString, '/doesNotExists';
		message: self messageString;
		supressNetworkErrors.
	response := client send.
	self assert: response isError