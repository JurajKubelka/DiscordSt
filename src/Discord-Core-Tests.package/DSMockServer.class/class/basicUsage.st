examples
basicUsage
	<gtExample>
	<label: 'A commong usage example. The values of serverResponse and server collection can be then tested.'>
	| server client serverResponse |
	server := DSMockServer new.
	server start.
	server delegate 
		map: '/your/path' 
		to: [ :request :response | 
			server add: request. 
			response entity: (ZnEntity text: 'OK') ].
	client := ZnClient new.
	serverResponse := client
		url: (server url / 'your' / 'path');
		get.
	server stop.
	^ { serverResponse. server collection }
