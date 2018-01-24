settings
discordClientPasswordOn: aBuilder  
	<systemsettings>  
	(aBuilder setting: #discordClientPassword)
		label: 'Discord User Password';
		parent: #discord;
		description: 'A user password used to connect to Discord. 
Notice that if you store the password on your local disk, it is unprotected.
You do not need to store the password as the authentication token is used after the first authentication.';
		target: self;
		type: #Password;
		default: '';
		order: 5.