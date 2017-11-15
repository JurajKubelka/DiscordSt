*Discord-Client-Tests
testSendJsonMessageToGuildTextOrDMChannelId
	| message returnedMessage |
	self startZnServer.
	api := self newApi.
	api apiUrl: self apiUrl.
	api token: self tokenString.
	self serverDelegate map: '/api/channels/channel-id/messages' to: [ :request :response |
		self serverRequests add: request.
		response entity: (ZnEntity text: '{"nonce": null, "attachments": [], "tts": false, "embeds": [], "timestamp": "2017-05-08T15:56:48.149000+00:00", "mention_everyone": false, "id": "1234", "pinned": false, "edited_timestamp": null, "author": {"username": "User one", "discriminator": "5678", "id": "9012", "avatar": null}, "mention_roles": [], "content": "text message", "channel_id": "channel-id", "mentions": [], "type": 0}') ].
	message := DSClientJsonPost new content: 'message one'; yourself.
	returnedMessage := api sendJsonMessage: message toGuildTextOrDMChannelId: 'channel-id'.
	self assert: returnedMessage notNil.
	self assert: returnedMessage content equals: 'text message'.
	self assert: returnedMessage restApi == api description: 'It should have the api object'.
	self assert: self serverRequests size equals: 1.
	self assert: self serverRequests first method equals: #POST.