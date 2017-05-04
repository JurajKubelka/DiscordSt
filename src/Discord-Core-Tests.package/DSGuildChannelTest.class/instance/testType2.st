tests
testType2
	channel := self newChannel.
	self should: [ channel type: self incorrectType ] raise: DSIncorrectValuesError.