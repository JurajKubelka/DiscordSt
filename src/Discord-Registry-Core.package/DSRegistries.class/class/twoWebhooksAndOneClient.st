examples
twoWebhooksAndOneClient
	<gtExample>
	<label: 'Two webhooks and one client registries'>
	^ self twoWebhooks
		addLast: DSClientRegistry mockClient;
		yourself