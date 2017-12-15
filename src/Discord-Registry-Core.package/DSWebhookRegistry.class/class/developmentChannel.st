examples
developmentChannel
	<gtExample>
	<label: 'development channel'>
	^ self new
		url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
		icon: (Smalltalk ui icons iconNamed: #pharo);
		name: 'development channel';
		yourself
		