tests
testAsDataPost
	object := self newPost.
	self assert: object asDataPost == object.