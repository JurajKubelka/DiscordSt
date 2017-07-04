tests
testSendToServerChannel
	| response content |
	self skipIfNotAuthenticated.
	content := self classAndTestSelectorMessageString.
	response := self client message
		content: content;
		sendToServer: self serverName
		channel: self channelName.
	self assert: response class equals: DSMessage.
	self assert: response content equals: content