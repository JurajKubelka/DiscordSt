private - sending
sendMainMessage: previousMessages
	"Send the user message with encoded information about messages, 
	that includes serialized data."

	^ self client message
		embedDescription: self description asString;
		embedThumbnailUrl: 'attachment://download-icon.png';
		embedInlineFieldName: 'Pharo' value: self pharoFieldValue;
		embedInlineFieldName: 'OS' value: self osFieldValue;
		embedInlineFieldName: self fuelFieldName
			value: (self fuelFieldValueFrom: self channel messages: previousMessages);
		fileName: 'download-icon.png' form: DSIcons download;
		with: [ :aMessage | 
			self screenshot
				ifNotNil: [ aMessage
						embedImageUrl: self imageAttachmentUrl;
						fileName: self imageName form: self screenshot ] ];
		with: [ :aMessage | 
			self
				displayProgress: 'Sending user message'
				whileSending: aMessage
				toChannel: self channel ]