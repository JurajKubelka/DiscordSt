examples
textAndRegistries
	<gtExample>
	<label: 'Choose registry'>
	^ self new 
		collection: { 
			DSSendUserTextMessageItem new.
			DSSendRegistriesItem new
				registries: DSRegistries twoWebhooksAndOneClient;
				yourself };
		yourself