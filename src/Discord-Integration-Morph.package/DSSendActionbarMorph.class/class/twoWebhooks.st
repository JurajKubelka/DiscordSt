examples
twoWebhooks
	<gtExample>
	<label: 'Add two webhooks registry'>
	^ self listenToClicks
		registries: DSRegistries twoWebhooks;
		yourself