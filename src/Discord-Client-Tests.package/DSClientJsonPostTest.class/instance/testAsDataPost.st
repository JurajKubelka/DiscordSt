tests
testAsDataPost
	| convertedPost |
	post := self newPost.
	convertedPost := post asDataPost.
	self deny: convertedPost == post.
	self assert: convertedPost class equals: DSClientDataPost.
	