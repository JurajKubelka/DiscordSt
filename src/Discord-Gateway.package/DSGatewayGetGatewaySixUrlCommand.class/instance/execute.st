execute
execute
	| response |
	response := DSUtility newZnClientWithUserAgent
		url: self gatewayUrl;
		get;
		response.
	response isSuccess 
		ifTrue: [ self websocketUrl: ((NeoJSONObject fromString: response contents) at: 'url') asZnUrl ]
		ifFalse: [ DSDiscordResponseError new
				response: response;
				signal: response contents ].
	self websocketUrl: (self websocketUrl
		queryAt: 'v' put: 6;
		queryAt: 'enconding' put: 'json';
		yourself)