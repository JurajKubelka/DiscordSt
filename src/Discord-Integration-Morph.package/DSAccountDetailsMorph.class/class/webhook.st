examples
webhook
	<gtExample>
	<label: 'Shows a webhook info (which is an empty window)'>
	^ self empty
		registry: DSWebhookRegistry learningHelpChannel;
		yourself