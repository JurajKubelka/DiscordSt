tests
testFileNameBytes
	| channel response content |
	self skipIfNotAuthenticated.
	content := self classAndTestSelectorMessageString.
	self client 
		message: content;
		fileName: 'random-image.jpg' 
		bytes: (ZnEasy get: 'http://lorempixel.com/400/200') contents.
	channel := self client servers first channelNamed: self channelName.
	response := self client sendTo: channel.
	self assert: response class equals: DSMessage.
	self assert: response content equals: content.
	self assert: response hasAttachments.
	self assert: response attachments size equals: 1.
	self assert: response attachments first filename equals: 'random-image.jpg'.