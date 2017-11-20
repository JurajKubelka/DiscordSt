examples
sendMessage
	<gtExample>
	^ self new 
		token: 'BOT-TOKEN';
		with: [ :bot | bot message
			content: 'Hi! I am a bot :-)'";
			sendToServer: 'Pharo' channel: 'general'" ].