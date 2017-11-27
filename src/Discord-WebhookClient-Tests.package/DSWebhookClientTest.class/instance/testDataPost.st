tests
testDataPost
	client := self classToTest new.
	self assert: client dataPost class equals: DSWebhookDataPost.
	self assert: client dataPost == client dataPost.
	self assert: client post == client post.