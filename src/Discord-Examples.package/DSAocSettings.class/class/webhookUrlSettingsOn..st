settings
webhookUrlSettingsOn: aBuilder 
	<systemsettings>	
	(aBuilder setting: #adventOfCodeWebhookUrl)
		parent: #adventOfCode;
		target: self;
		description: 'Public Discord Webhook URL to share your Advent of Code solutions. See https://adventofcode.com';
		label: 'Public Discord Webhook URL'
