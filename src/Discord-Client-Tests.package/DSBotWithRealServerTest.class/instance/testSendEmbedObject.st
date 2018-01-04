tests
testSendEmbedObject
	| channel response content |
	self skipIfNotAuthenticated.
	content := self classAndTestSelectorMessageString.
	channel := self client servers first channelNamed: self channelName.
	response := self client message
		embedTitle: 'Embed Title';
		embedDescription: content;
		embedUrl: 'http://pharo.org';
		embedColor: Color random;
		embedFooterText: 'Pharo Project';
		embedFooterIconUrl: 'attachment://footer.png';
		embedThumbnailUrl: 'attachment://thumbnail.png';
		embedImageUrl: 'attachment://screenshot.png';
		embedInlineFieldName: 'Pharo' value: self pharoFieldValue;
		embedInlineFieldName: 'OS' value: self osFieldValue;
		fileName: 'screenshot.png' morph: World submorphs atRandom;
		fileName: 'thumbnail.png' form: #help asIcon;
		fileName: 'footer.png' form: #pharo asIcon;
		fileName: 'random-image.jpg' 
			bytes: PolymorphSystemSettings pharoLogoContents base64Decoded asByteArray;
		sendTo: channel.
	self assert: response class equals: DSMessage.
	#( 'random-image.jpg' ) do: [ :eachFileName |
		self 
			assert: (response attachments anySatisfy: [ :attachment | 
				attachment filename = eachFileName ])
			description: eachFileName asString, ' not found as an attachment' ]