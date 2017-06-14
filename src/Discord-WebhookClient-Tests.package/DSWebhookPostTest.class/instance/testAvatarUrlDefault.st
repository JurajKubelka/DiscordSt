tests
testAvatarUrlDefault
	object := self newPost.
	self assert: object avatarUrl isNil.