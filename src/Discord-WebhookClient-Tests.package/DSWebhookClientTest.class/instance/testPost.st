test - post
testPost
	"Post JSON entity"
	| response port |
	server := ZnServer startOn: 0.
	port := server serverSocket port.
	client := DSWebhookClient new 
		url: 'http://localhost:', port asString;
		message: self messageString.
	response := client post.
	self assert: response isSuccess