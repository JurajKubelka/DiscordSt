test - sending
testPostNetworkError5
	"Post multi-part data form entity"
	| port response |
	server := ZnServer startOn: 0.
	port := server serverSocket port.
	client := self classToTest new 
		url: 'http://localhost:', port asString, '/doesNotExists';
		message: self messageString;
		fileName: self anyString bytes: self bytes.
	self should: [ response := client send ] raise: DSResponseError.
	self assert: response isNil.