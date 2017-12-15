examples
webhook
	<gtExample>
	<label: 'Add one webhook registry'>
	^ self listenToClicks
		registries: DSRegistries webhook;
		yourself