examples
textScreenshotsAndRegistries
	<gtExample>
	<label: 'Choose registry'>
	^ self new 
		collection: { 
			DSSendUserTextMessageItem new.
			DSSendScreenshotsItem twoRandomMorphs.
			DSSendRegistriesItem twoWebhooksAndOneClient };
		yourself