tests
testContent
	post := self newPost content: self contentString; yourself.
	self assert: post content equals: self contentString.