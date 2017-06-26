private
send
	"Send message to a speficic channel.
	The method expects that message text, object, channel, and client objects are set."

	self client
		embedDescription: self text;
		embedInlineFieldName: 'Pharo' value: self pharoFieldValue;
		embedInlineFieldName: 'OS' value: self osFieldValue;
		embedInlineFieldName: self fuelFieldName value: (self fuelFieldValueFrom: self channel).
	self imageForm
		ifNotNil: [ self client
				embedImageUrl: self imageAttachmentUrl;
				fileName: self imageName form: self imageForm ].
	self attachSerializedObject.
	self client sendTo: self channel.