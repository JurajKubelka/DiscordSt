tests
testAvatarUrl
	object := self newPost avatarUrl: self avatarUrl; yourself.
	self assert: object avatarUrl equals: self avatarUrl.