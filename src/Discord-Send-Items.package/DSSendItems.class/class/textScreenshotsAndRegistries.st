examples
textScreenshotsAndRegistries
	<gtExample>
	<label: 'Choose registry'>
	^ self new 
		collection: { 
			DSSendUserTextMessageItem new.
			DSSendAttachmentsItem twoRandomMorphs.
			DSSendRegistriesItem twoWebhooksAndOneClient };
		yourself