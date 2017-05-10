tests
testGuildChannelsUsingId
	"Return Guild Text Channel"
	| channels |
	self startZnServer.
	api := self newApi.
	api apiUrl: self localServerApiUrl.
	api token: self tokenString.
	self serverDelegate map: '/api/guilds/1234/channels' to: [ :request :response |
		self serverRequests add: request.
		response entity: (ZnEntity text: '[{"guild_id": "1234", "name": "general", "permission_overwrites": [], "topic": "Channel topic", "position": 0, "last_message_id": "5678", "type": "text", "id": "1234", "is_private": false}]') ].
	channels := api guildChannelsUsingId: 1234.
	self assert: channels notNil.
	self assert: channels isCollection.
	self assert: channels size equals: 1.
	self assert: channels first name equals: 'general'.
	self assert: channels first api == api description: 'It should have the api object'.
	self assert: channels first isGuildTextChannel.
	self deny: channels first isGuildVoiceChannel.
	self assert: self serverRequests size equals: 1.
	self assert: self serverRequests first method equals: #GET.
