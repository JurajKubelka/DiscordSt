tests
testUsername2
	client := DSWebhookClient new 
		username: self username;
		message: self messageString;
		yourself.
	self assert: client webhook username equals: self username.
	self assert: client webhook content equals: self messageString.