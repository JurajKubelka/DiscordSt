tests
testContentDefault
	object := self newPost.
	self assert: object content isNil.