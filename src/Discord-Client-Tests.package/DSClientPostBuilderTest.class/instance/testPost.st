tests
testPost
	"Create JSON post"
	builder := self newInstanceToBeTested.
	self assert: builder post class equals: DSClientJsonPost.
	self assert: builder post == builder post.
