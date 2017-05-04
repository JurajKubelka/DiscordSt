tests
testPrivate
	channel := self newChannel.
	channel private: false.
	self deny: channel private