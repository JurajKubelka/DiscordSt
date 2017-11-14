tests
testAvatarUrl
	user := self newUser.
	user id: 'user-id'.
	user avatarHash: 'avatar-id'.
	user api: DSRestApi defaultClass new.
	self 
		assert: user avatarUrl asString
		equals: 'https://cdn.discordapp.com/avatars/user-id/avatar-id.webp?size=1024'