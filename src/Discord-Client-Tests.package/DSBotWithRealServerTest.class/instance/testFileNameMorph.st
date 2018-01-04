tests
testFileNameMorph
	| channel response content |
	self skipIfNotAuthenticated.
	content := self classAndTestSelectorMessageString.
	channel := self client servers first channelNamed: self channelName.
	response := self client message
		content: content;
		fileName: 'screen.png' morph: World;
		sendTo: channel.
	self assert: response class equals: DSMessage.
	self assert: response content equals: content.
	self assert: response hasAttachments.
	self assert: response attachments size equals: 1.
	self assert: response attachments first filename equals: 'screen.png'.