tests
testSendToServerChannel
	| response content |
	self skipIfNotAuthenticated.
	content := self classAndTestSelectorMessageString.
	self client message: content.
	response := self client
		sendToServer: self serverName
		channel: self channelName.
	self assert: response class equals: DSMessage.
	self assert: response content equals: content