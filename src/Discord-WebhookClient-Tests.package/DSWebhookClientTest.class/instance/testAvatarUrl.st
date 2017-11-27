tests
testAvatarUrl
	client := self classToTest new 
		message: self messageString;
		avatarUrl: self avatarUrl;
		yourself.
	self assert: client post avatarUrl equals: self avatarUrl.
	self assert: client post content equals: self messageString.