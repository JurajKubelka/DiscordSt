examples
postLocalImage
	<gtExample>
	<label: 'Post local image or any other file'>

	^ self new 
		url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
		message: 'Pharo loves Discord';
		fileName: 'pharo-logo.png' 
		bytes: (ZnEasy 
			get: 'http://files.pharo.org/media/logo/icon-opaque-512x512.png') contents;
		yourself ";
		post"