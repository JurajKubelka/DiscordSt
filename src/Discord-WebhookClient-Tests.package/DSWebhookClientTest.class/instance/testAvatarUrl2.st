tests
testAvatarUrl2
	client := self classToTest new 
		avatarUrl: self avatarUrl;
		message: self messageString;
		yourself.
	self assert: client post avatarUrl equals: self avatarUrl.
	self assert: client post content equals: self messageString.