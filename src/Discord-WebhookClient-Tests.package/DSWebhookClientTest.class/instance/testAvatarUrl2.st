tests
testAvatarUrl2
	client := DSWebhookClient new 
		avatarUrl: self avatarUrl;
		message: self messageString;
		yourself.
	self assert: client webhook avatarUrl equals: self avatarUrl.
	self assert: client webhook content equals: self messageString.