tests
testAsDataPost
	| convertedPost |
	object := self newPost.
	convertedPost := object asDataPost.
	self deny: convertedPost == object.
	self assert: convertedPost class equals: DSWebhookDataPost.
	