tests
testContent3
	post := self newPost content: self contentLongString; yourself.
	self assert: post content size equals: DSClientPost contentLimit.