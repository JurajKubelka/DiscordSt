tests
testContent
	object := self newPost content: self contentString; yourself.
	self assert: object content equals: self contentString.