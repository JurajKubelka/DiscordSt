tests
testFileNameBytes
	| channel response content |
	self skipIfNotAuthenticated.
	content := self classAndTestSelectorMessageString.
	channel := self client servers first channelNamed: self channelName.
	response := self client message
		content: content;
		fileName: 'random-image.jpg' 
		bytes: (ZnEasy get: 'http://lorempixel.com/400/200') contents;
		sendTo: channel.
	self assert: response class equals: DSMessage.
	self assert: response content equals: content.
	self assert: response hasAttachments.
	self assert: response attachments size equals: 1.
	self assert: response attachments first filename equals: 'random-image.jpg'.