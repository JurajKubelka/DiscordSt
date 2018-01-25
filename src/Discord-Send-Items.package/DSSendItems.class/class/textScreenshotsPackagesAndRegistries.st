examples
textScreenshotsPackagesAndRegistries
	<gtExample>
	<label: 'Choose registry'>
	^ self new 
		collection: { 
			DSSendUserTextMessageItem new.
			DSSendScreenshotsItem twoRandomMorphs.
			DSSendPackagesItem withObjectAndCollectionClasses.
			DSSendRegistriesItem twoWebhooksAndOneClient };
		yourself