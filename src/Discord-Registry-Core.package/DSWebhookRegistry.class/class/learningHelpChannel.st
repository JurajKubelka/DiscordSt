examples
learningHelpChannel
	<gtExample>
	<label: 'learning-help channel'>
	^ self new
		url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
		icon: (Smalltalk ui icons iconNamed: #help);
		name: 'learning-help channel';
		yourself
		