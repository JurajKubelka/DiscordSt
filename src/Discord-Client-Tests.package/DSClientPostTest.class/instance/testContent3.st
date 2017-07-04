tests
testContent3
	"The"
	post := self newPost.
	self should: [ post content: self contentLongString ] raise: DSLongMessageError.
	self assert: post content isNil.