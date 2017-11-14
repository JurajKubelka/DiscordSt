tests
testAvatarHash
	user := self newUser.
	user avatarHash: self anyString.
	self assert: user avatarHash equals: self anyString.