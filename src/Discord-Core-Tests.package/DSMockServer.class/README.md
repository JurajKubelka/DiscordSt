I simulate a Discord server.
Test cases can use me for configuring delegate and responses.

Test cases that use me, should write to their tearDown method the following:

{{{
tearDown
	server ifNotNil: #stop.
	super tearDown.
}}}

Usage:

{{{
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
serverResponse.
}}}
