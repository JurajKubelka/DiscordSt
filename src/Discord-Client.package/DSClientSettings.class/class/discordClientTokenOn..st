settings
discordClientTokenOn: aBuilder  
	<systemsettings>  
	(aBuilder setting: #discordClientToken)
		label: 'Discord Token';
		parent: #discord;
		description: 'An authentication token used for Discord communication. It is set by the client automatically. You likely do not want to change it.';
		order: 10;
		type: #Password;
		target: self;
		default: ''.