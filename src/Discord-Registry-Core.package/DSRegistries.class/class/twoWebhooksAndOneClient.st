examples
twoWebhooksAndOneClient
	<gtExample>
	<label: 'Two webhooks and one client registries'>
	^ self twoWebhooks
		addFirst: DSClientRegistry mockClient;
		yourself