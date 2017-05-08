tests
testEnsurePost
	"Create JSON post"
	client := self newClient.
	self assert: client ensurePost class equals: DSClientJsonPost.
	self assert: client ensurePost == client ensurePost.
