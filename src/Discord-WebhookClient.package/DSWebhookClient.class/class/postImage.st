examples
postImage
	<gtExample>
	<label: 'Post an image or any other file'>

	^ DSWebhookClient new
		url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
		message: 'This message includes an image';
		fileName: 'pharo-logo.png' 
		bytes: (ZnEasy 
			get: 'http://files.pharo.org/media/logo/icon-opaque-512x512.png') contents;
		yourself ";
		send"