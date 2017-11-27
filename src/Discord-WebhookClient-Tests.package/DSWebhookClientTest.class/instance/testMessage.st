tests
testMessage
	client := self classToTest new message: self messageString.
	self assert: client post content equals: self messageString.