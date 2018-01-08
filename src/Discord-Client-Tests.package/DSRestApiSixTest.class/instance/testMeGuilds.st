tests
testMeGuilds
	| guilds |
	self startMockServer.
	restApi := self newRestApi.
	restApi apiUrl: self apiUrl.
	restApi token: self constants tokenString.
	self mockServerDelegate map: '/api/users/@me/guilds' to: [ :request :response |
		self mockServerRequests add: request.
		response entity: (ZnEntity text: '[{"owner": false, "permissions": 104332353, "icon": "icon-id", "id": "1234", "name": "Guild One"}]') ].
	guilds := restApi meGuilds.
	self assert: guilds notNil.
	self assert: guilds isCollection.
	self assert: guilds size equals: 1.
	self assert: guilds first name equals: 'Guild One'.
	self assert: guilds first restApi == restApi description: 'It should have the api object'.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first method equals: #GET.