tests
testAvatarUrl
	user := self newUser.
	user id: 'user-id'.
	user avatar: 'avatar-id'.
	user api: DSApi defaultClass new.
	self 
		assert: user avatarUrl asString
		equals: 'https://cdn.discordapp.com/avatars/user-id/avatar-id.webp?size=1024'