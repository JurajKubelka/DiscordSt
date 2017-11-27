tests
testDataPost2
	"Convert JSON post to Data post"
	builder := self newInstanceToBeTested.
	builder post: builder newJSONPost.
	self assert: builder dataPost class equals: DSClientDataPost.
	self assert: builder dataPost == builder dataPost.
	self assert: builder post == builder post.