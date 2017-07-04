tests
testEnsurePost
	"Create JSON post"
	builder := self newInstanceToBeTested.
	self assert: builder ensurePost class equals: DSClientJsonPost.
	self assert: builder ensurePost == builder ensurePost.
