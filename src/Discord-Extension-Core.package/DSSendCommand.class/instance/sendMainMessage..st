private - sending
sendMainMessage: previousMessages 
	self client
		embedDescription: self description asString;
		embedThumbnailUrl: 'attachment://download-icon.png';
		embedInlineFieldName: 'Pharo' value: self pharoFieldValue;
		embedInlineFieldName: 'OS' value: self osFieldValue;
		embedInlineFieldName: self fuelFieldName value: (self fuelFieldValueFrom: self channel messages: previousMessages);
		fileName: 'download-icon.png' form: DSIcons download.
	self screenshot
		ifNotNil: [ self client
				embedImageUrl: self imageAttachmentUrl;
				fileName: self imageName form: self screenshot ].
	self client sendTo: self channel.