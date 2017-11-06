tests-converting
testAsAuthor
	| author |
	user := DSUser
		fromJsonString: DSTestHelper fullUserJSONString
		api: self newApi.
	self assert: user email equals: 'contact@example.com'.
	author := user asAuthor.
	self deny: author == user.
	self deny: author fieldsDictionary == user fieldsDictionary.
	self assert: author id equals: user id.
	self assert: author name equals: user name.
	self assert: author discriminator equals: user discriminator.
	self assert: author avatar equals: user avatar.
	self assert: author mfaEnabled isNil.
	self assert: author email isNil.
	self assert: author verified isNil.
	self assert: author fieldsDictionary size equals: 4