tests
testUsername
	object := self newPost username: self username; yourself.
	self assert: object username equals: self username.