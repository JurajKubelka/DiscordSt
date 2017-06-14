tests
testSendTo
	| channel response content |
	self skipIfNotAuthenticated.
	content := self classAndTestSelectorMessageString.
	self client message: content.
	channel := self client servers first channelNamed: self channelName.
	response := self client sendTo: channel.
	self assert: response class equals: DSMessage.
	self assert: response content equals: content