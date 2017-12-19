examples
oneServer
	<gtExample>
	<label: 'A client with one server'>
	^ self basic
		registry: DSMockClient authenticated asRegistry;
		yourself