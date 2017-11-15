tests
testContentDefault
	post := self newPost.
	self assert: post content isNil