tests
testSendTo
	| channel response content |
	self skipIfNotAuthenticated.
	content := self messageContentString.
	self client message: content; yourself.
	channel := self client servers first channelNamed: 'test-cases'.
	response := self client sendTo: channel.
	self assert: response class equals: DSMessage.
	self assert: response content equals: content.