examples
textAndRegistries
	<gtExample>
	<label: 'Choose registry'>
	^ self new 
		collection: { 
			DSSendUserTextMessageItem new.
			DSSendRegistriesItem twoWebhooksAndOneClient };
		yourself