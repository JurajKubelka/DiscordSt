examples
empty
	<gtExample>
	<label: 'A client without any server'>
	^ self basic
		registry: DSMockClient noServers asRegistry;
		yourself