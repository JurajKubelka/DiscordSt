## Bot App Examples

### Display Existing Servers (Guilds)

```Smalltalk
DSBot new
	token: 'BOT-TOKEN';
	servers.
```

![Bot example](../assets/img/bot-servers.png)

### Send Message

```Smalltalk
DSBot new
	token: 'BOT-TOKEN';
	with: [ :bot | bot message
		content: 'Hi! I am a bot :-)';
		sendToServer: 'Pharo' channel: 'general' ].
```

![Bot example](../assets/img/bot-send-message.png)

For more examples see `DSBot` and `DSClientPostBuilder` classes.
