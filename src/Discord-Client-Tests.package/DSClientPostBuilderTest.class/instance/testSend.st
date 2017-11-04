test - protocol - sending
testSend
	| client message |
	self startZnServer.
	self serverDelegate
		map: '/api/channels/channel-id/messages'
		to: [ :request :response |
		self serverRequests add: request.
		response entity: (ZnEntity text: '{"nonce": null, "attachments": [], "tts": false, "embeds": [], "timestamp": "2017-05-08T15:56:48.149000+00:00", "mention_everyone": false, "id": "1234", "pinned": false, "edited_timestamp": null, "author": {"username": "User one", "discriminator": "5678", "id": "9012", "avatar": null}, "mention_roles": [], "content": "text message", "channel_id": "channel-id", "mentions": [], "type": 0}') ].
	client := DSClient new.
	client restApi 
		apiUrl: self apiUrl;
		token: self anyString;
		yourself.
	builder := self newInstanceToBeTested 
		content: self anyString;
		client: client;
		channel: (DSTextChannel new id: 'channel-id'; yourself);
		yourself.
	message := builder send.
	self assert: message notNil.
	self assert: message content equals: 'text message'.
	self assert: self serverRequests size equals: 1.
	self assert: self serverRequests first method equals: #POST.
	self assert: builder post isNil.