test - sending
testSend2
	"Send multi-part data form entity"
	| response port |
	server := ZnServer startOn: 0.
	port := server serverSocket port.
	client := self classToTest new 
		url: 'http://localhost:', port asString;
		message: self messageString;
		fileName: self anyString bytes: self bytes.
	response := client send.
	self assert: response isSuccess