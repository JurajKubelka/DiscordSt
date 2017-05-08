tests
testMessage
	client := self newClient message: self anyString.
	self assert: client post content equals: self anyString.