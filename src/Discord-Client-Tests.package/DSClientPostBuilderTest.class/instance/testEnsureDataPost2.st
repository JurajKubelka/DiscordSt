tests
testEnsureDataPost2
	"Convert JSON post to Data post"
	builder := self newInstanceToBeTested.
	builder post: builder newJSONPost.
	self assert: builder ensureDataPost class equals: DSClientDataPost.
	self assert: builder ensureDataPost == builder ensureDataPost.
	self assert: builder ensurePost == builder ensurePost.