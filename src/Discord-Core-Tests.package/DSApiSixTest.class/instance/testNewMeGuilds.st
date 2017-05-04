tests
testNewMeGuilds
	| guilds |
	self startZnServer.
	api := self newApi.
	api apiUrl: self localServerApiUrl.
	api token: self tokenString.
	delegate map: '/api/users/@me/guilds' to: [ :request :response |
		serverRequests add: request.
		response entity: (ZnEntity text: '[{"owner": false, "permissions": 104332353, "icon": "icon-id", "id": "1234", "name": "Guild One"}]') ].
	guilds := api newMeGuilds.
	self assert: guilds notNil.
	self assert: guilds isCollection.
	self assert: guilds size equals: 1.
	self assert: guilds first name equals: 'Guild One'.
	self assert: serverRequests size equals: 1.
	self assert: serverRequests first method equals: #GET.