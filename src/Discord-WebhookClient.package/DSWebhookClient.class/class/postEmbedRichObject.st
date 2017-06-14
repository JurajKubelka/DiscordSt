examples
postEmbedRichObject
	<gtExample>
	<label: 'Post embed rich object with username and avatar icon'>

	^ DSWebhookClient new 
		url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
		embedTitle: 'Discord Bot Announcement';
		embedDescription: 'Hello! I am a Bot executed from [Pharo](http://pharo.org)';
		embedUrl: 'https://github.com/JurajKubelka/DiscordSt';
		embedColor: Color green;
		embedFooterText: 'Discord API in Pharo';
		embedFooterIconUrl: 'https://discordapp.com/assets/2c21aeda16de354ba5334551a883b481.png';
		yourself ";
		post"