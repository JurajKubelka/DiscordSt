tests
testEnsureDataPost
	"Create new data post object"
	builder := self newInstanceToBeTested.
	self assert: builder ensureDataPost class equals: DSClientDataPost.
	self assert: builder ensureDataPost == builder ensureDataPost.
	self assert: builder ensurePost == builder ensurePost.