examples
mockClient
	<gtExample>
	<label: 'Client email and password'>
	^ self new
		client: DSMockClient unsigned;
		yourself