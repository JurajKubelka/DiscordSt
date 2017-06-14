examples
postMorphAsScreenshot
	<gtExample>
	<label: 'Post a Morph object as an attached screenshot'>

	^ DSWebhookClient new 
		url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
		username: 'Pharo Screenshot';
		avatarUrl: 'http://files.pharo.org/media/logo/icon-opaque-512x512.png';
		fileName: 'screen.png' morph: World;
		yourself ";
		post"