tests
testGuildChannelsUsingId2
	"Receive guild voice channel"
	| channels |
	self startZnServer.
	api := self newApi.
	api apiUrl: self localServerApiUrl.
	api token: self tokenString.
	delegate map: '/api/guilds/1234/channels' to: [ :request :response |
		serverRequests add: request.
		response entity: (ZnEntity text: '[{"guild_id": "1234", "name": "general", "permission_overwrites": [], "bitrate": "128", "position": 0, "user_limit": "12", "type": "voice", "id": "1234", "is_private": false}]') ].
	channels := api guildChannelsUsingId: 1234.
	self assert: channels notNil.
	self assert: channels isCollection.
	self assert: channels size equals: 1.
	self assert: channels first name equals: 'general'.
	self deny: channels first isGuildTextChannel.
	self assert: channels first isGuildVoiceChannel.
	self assert: serverRequests size equals: 1.
	self assert: serverRequests first method equals: #GET.
