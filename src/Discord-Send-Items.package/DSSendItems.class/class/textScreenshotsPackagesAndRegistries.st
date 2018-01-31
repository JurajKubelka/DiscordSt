examples
textScreenshotsPackagesAndRegistries
	<gtExample>
	<label: 'Choose registry'>
	^ self new 
		collection: { 
			DSSendUserTextMessageItem new.
			DSSendAttachmentsItem screenshotsAndPackages.
			DSSendRegistriesItem twoWebhooksAndOneClient };
		yourself