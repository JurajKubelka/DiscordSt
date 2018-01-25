test - sending
testPostNetworkError4
	"Post JSON entity"
	| port response |
	server := ZnServer startOn: 0.
	port := server serverSocket port.
	client := self classToTest new 
		url: 'http://localhost:', port asString, '/doesNotExists';
		message: self messageString.
	self should: [ response := client send ] raise: DSResponseError.
	self assert: response isNil.