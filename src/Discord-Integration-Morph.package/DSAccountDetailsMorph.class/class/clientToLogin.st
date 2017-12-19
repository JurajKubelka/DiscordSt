examples
clientToLogin
	<gtExample>
	<label: 'Shows a client login request'>
	^ self empty
		registry: DSMockClient unsigned asRegistry;
		yourself