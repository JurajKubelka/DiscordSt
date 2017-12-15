examples
empty
	<gtExample>
	<label: 'A client without any server'>
	| registry |
	registry := DSMockClient empty asRegistry.
	^ self new
		serverList: registry servers;
		yourself