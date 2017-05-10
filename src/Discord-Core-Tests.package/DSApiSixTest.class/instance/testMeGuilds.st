tests
testMeGuilds
	| guilds |
	self startZnServer.
	api := self newApi.
	api apiUrl: self localServerApiUrl.
	api token: self tokenString.
	self serverDelegate map: '/api/users/@me/guilds' to: [ :request :response |
		self serverRequests add: request.
		response entity: (ZnEntity text: '[{"owner": false, "permissions": 104332353, "icon": "icon-id", "id": "1234", "name": "Guild One"}]') ].
	guilds := api meGuilds.
	self assert: guilds notNil.
	self assert: guilds isCollection.
	self assert: guilds size equals: 1.
	self assert: guilds first name equals: 'Guild One'.
	self assert: guilds first api == api description: 'It should have the api object'.
	self assert: self serverRequests size equals: 1.
	self assert: self serverRequests first method equals: #GET.
	self assert: api meGuilds == guilds description: 'The same object should be returned.'