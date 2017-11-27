tests
testPost
	client := self classToTest new.
	self assert: client post class equals: DSWebhookJsonPost.
	self assert: client post == client post.