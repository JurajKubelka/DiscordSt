tests
testDiscriminator
	user := self newUser.
	user discriminator: self anyString.
	self assert: user discriminator equals: self anyString.