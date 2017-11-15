tests
testEditedTimestamp
	message := self newMessage.
	message editedTimestamp: self newDateAndTime.
	self assert: message editedTimestamp equals: self newDateAndTime.