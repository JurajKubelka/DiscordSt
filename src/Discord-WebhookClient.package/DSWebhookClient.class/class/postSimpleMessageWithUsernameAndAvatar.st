examples
postSimpleMessageWithUsernameAndAvatar
	<gtExample>
	<label: 'Post simple message with username and avatar icon'>

	^ DSWebhookClient new 
		url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
		message: 'Hello! I am a Bot executed from [Pharo](http://pharo.org). You can use Markdown.';
		username: 'Pharo Welcome';
		avatarUrl: 'http://files.pharo.org/media/logo/icon-opaque-512x512.png';
		yourself ";
		post"