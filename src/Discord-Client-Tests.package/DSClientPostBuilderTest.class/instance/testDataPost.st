tests
testDataPost
	"Create new data post object"
	builder := self newInstanceToBeTested.
	self assert: builder dataPost class equals: DSClientDataPost.
	self assert: builder dataPost == builder dataPost.
	self assert: builder post == builder post.