tests
testFileNameMorph
	| channel response content |
	self skipIfNotAuthenticated.
	content := self classAndTestSelectorMessageString.
	self client 
		message: content;
		fileName: 'screen.png' morph: World.
	channel := self client servers first channelNamed: self channelName.
	response := self client sendTo: channel.
	self assert: response class equals: DSMessage.
	self assert: response content equals: content.
	self assert: response hasAttachments.
	self assert: response attachments size equals: 1.
	self assert: response attachments first filename equals: 'screen.png'.