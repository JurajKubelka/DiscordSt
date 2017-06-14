examples
postFormAsScreenshot
	<gtExample>
	<label: 'Post a Form object as an attached screenshot'>

	^ DSWebhookClient new 
		url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
		message: 'This is a help icon used in the Pharo image';
		fileName: 'help-icon.png' form: #help asIcon;
		yourself ";
		post"