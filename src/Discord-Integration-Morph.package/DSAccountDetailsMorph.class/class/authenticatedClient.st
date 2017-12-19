examples
authenticatedClient
	<gtExample>
	<label: 'Shows a client server and channel list'>
	^ self empty
		registry: DSMockClient authenticated asRegistry;
		yourself