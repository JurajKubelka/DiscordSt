tests-converting
testAsAuthor
	| author |
	user := self coreModelJsonMapping read: DSUser withMapping: #userMappingFor: on: self coreModelJsonMapping jsonUser readStream.
	user restApi: self newApi.
	self assert: user email equals: 'nelly@discordapp.com'.
	author := user asAuthor.
	self deny: author == user.
	self assert: author id equals: user id.
	self assert: author name equals: user name.
	self assert: author discriminator equals: user discriminator.
	self assert: author avatarHash equals: user avatarHash.
	self assert: author isMfaEnabled isNil.
	self assert: author email isNil.
	self deny: author isVerified.