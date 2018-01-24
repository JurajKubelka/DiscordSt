settings
discordClientEmailOn: aBuilder  
	<systemsettings>  
	(aBuilder setting: #discordClientEmail)
		label: 'Discord User Email';
		iconName: #user;
		parent: #discord;
		description: 'A user email used to connect to Discord.';
		target: self;
		order: 3;
		type: #String;
		default: ''.