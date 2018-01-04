tests
testSendTo
	| channel response content |
	self skipIfNotAuthenticated.
	content := self classAndTestSelectorMessageString.
	channel := self client servers first channelNamed: self channelName.
	response := self client message
		content: content;
		sendTo: channel.
	self assert: response class equals: DSMessage.
	self assert: response content equals: content