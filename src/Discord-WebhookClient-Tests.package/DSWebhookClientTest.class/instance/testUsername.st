tests
testUsername
	client := DSWebhookClient new 
		message: self messageString;
		username: self username;
		yourself.
	self assert: client webhook username equals: self username.
	self assert: client webhook content equals: self messageString.