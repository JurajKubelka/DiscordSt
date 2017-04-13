tests
testAvatarUrl
	client := DSWebhookClient new 
		message: self messageString;
		avatarUrl: self avatarUrl;
		yourself.
	self assert: client webhook avatarUrl equals: self avatarUrl.
	self assert: client webhook content equals: self messageString.