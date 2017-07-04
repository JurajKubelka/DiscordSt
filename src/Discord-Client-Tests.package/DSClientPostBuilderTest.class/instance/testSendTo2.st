test - protocol - sending
testSendTo2
	| client message |
	self startZnServer.
	self serverDelegate
		map: '/api/users/@me/guilds'
			to: [ :request :response | 
			self serverRequests add: request.
			response
				entity:
					(ZnEntity
						text:
							'[{"owner": false, "permissions": 104332353, "icon": "icon-id", "id": "1234", "name": "Guild One"}]') ];
		map: '/api/guilds/1234/channels'
			to: [ :request :response | 
			self serverRequests add: request.
			response
				entity:
					(ZnEntity
						text:
							'[{"guild_id": "1234", "name": "general", "permission_overwrites": [], "topic": "Channel topic", "position": 0, "last_message_id": "5678", "type": "text", "id": "1234", "is_private": false}]') ];
		map: '/api/channels/1234/messages'
			to: [ :request :response | 
			self serverRequests add: request.
			response
				entity:
					(ZnEntity
						text:
							'{"nonce": null, "attachments": [], "tts": false, "embeds": [], "timestamp": "2017-05-08T15:56:48.149000+00:00", "mention_everyone": false, "id": "5674", "pinned": false, "edited_timestamp": null, "author": {"username": "User one", "discriminator": "5678", "id": "9012", "avatar": null}, "mention_roles": [], "content": "text message", "channel_id": "1234", "mentions": [], "type": 0}') ].
	client := DSClient new.
	client restApi
		apiUrl: self apiUrl;
		token: self anyString;
		yourself.
	builder := self newInstanceToBeTested
		content: self anyString;
		client: client;
		yourself.
	message := builder sendTo: [ :servers | servers first general ].
	self assert: message notNil.
	self assert: message content equals: 'text message'.
	self assert: self serverRequests size equals: 3.
	self assert: self serverRequests last method equals: #POST.
	self assert: builder post isNil