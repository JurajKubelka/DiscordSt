tests
testEnsureDataPost2
	"Convert JSON post to Data post"
	client := self newClient.
	client post: client newJSONPost.
	self assert: client ensureDataPost class equals: DSClientDataPost.
	self assert: client ensureDataPost == client ensureDataPost.
	self assert: client ensurePost == client ensurePost.