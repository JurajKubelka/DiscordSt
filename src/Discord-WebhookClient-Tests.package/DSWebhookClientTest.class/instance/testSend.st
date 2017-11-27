test - sending
testSend
	"Send JSON entity"
	| response port |
	server := ZnServer startOn: 0.
	port := server serverSocket port.
	client := self classToTest new 
		url: 'http://localhost:', port asString;
		message: self messageString.
	response := client send.
	self assert: response isSuccess