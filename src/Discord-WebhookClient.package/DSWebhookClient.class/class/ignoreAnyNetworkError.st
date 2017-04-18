examples
ignoreAnyNetworkError
	<gtExample>
	<label: 'Ignore any network error'>

	^ self new 
		url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
		message: 'Hello! I am a Bot executed from Pharo';
		supressNetworkErrors;
		yourself ";
		post"