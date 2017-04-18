examples
postFormObjectAsScreenshot
	<gtExample>
	<label: 'Post a Form object as an attached screenshot'>

	^ self new 
		url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
		message: 'Pharo loves Discord';
		fileName: 'help-icon.png' form: #help asIcon;
		yourself ";
		post"