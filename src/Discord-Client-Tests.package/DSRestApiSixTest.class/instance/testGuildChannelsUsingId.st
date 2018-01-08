tests
testGuildChannelsUsingId
	"Return Guild Text Channel"
	| channels |
	self startMockServer.
	api := self newRestApi.
	api apiUrl: self apiUrl.
	api token: self constants tokenString.
	self mockServerDelegate map: '/api/guilds/1234/channels' to: [ :request :response |
		self mockServerRequests add: request.
		response entity: (ZnEntity text: '[{"guild_id": "1234", "name": "general", "permission_overwrites": [], "topic": "Channel topic", "position": 0, "last_message_id": "5678", "type": 0, "id": "1234", "is_private": false}]') ].
	channels := api guildChannelsUsingId: 1234.
	self assert: channels notNil.
	self assert: channels isCollection.
	self assert: channels size equals: 1.
	self assert: channels first name equals: 'general'.
	self assert: channels first restApi == api description: 'It should have the api object'.
	self assert: channels first isGuildTextChannel.
	self deny: channels first isGuildVoiceChannel.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first method equals: #GET.
