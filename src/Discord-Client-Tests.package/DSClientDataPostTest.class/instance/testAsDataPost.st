tests
testAsDataPost
	post := self newPost.
	self assert: post asDataPost == post.