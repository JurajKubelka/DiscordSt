examples
postEmbedRichObject
	<gtExample>
	<label: 'Post embed rich object with username and avatar icon'>

	^ self new 
		url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
		embed: (DSEmbedObject new 
			title: 'Discord Bot Announcement'; 
			description: 'Hello! I am a Bot executed from [Pharo](http://pharo.org)';
			url: 'https://github.com/JurajKubelka/DiscordSt';
			color: Color green;
			footerText: 'Discord API in Pharo';
			footerIconUrl: 'https://discordapp.com/assets/2c21aeda16de354ba5334551a883b481.png';
			yourself);
		yourself ";
		post"