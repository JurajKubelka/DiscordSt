tests
testPrivate2
	channel := self newChannel.
	self should: [ channel private: true ] raise: DSIncorrectValuesError.
