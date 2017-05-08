tests
testEnsureDataPost
	"Create new data post object"
	client := self newClient.
	self assert: client ensureDataPost class equals: DSClientDataPost.
	self assert: client ensureDataPost == client ensureDataPost.
	self assert: client ensurePost == client ensurePost.