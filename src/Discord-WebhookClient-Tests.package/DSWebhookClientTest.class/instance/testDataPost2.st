tests
testDataPost2
	client := self classToTest new.
	client post: client newJSONPost.
	self assert: client dataPost class equals: DSWebhookDataPost.
	self assert: client post == client post.