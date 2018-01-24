instance creation
newDefault
 	DSClientSettings updateSettings.
	^ self new
		email: DSClientSettings discordClientEmail;
		password: DSClientSettings discordClientPassword;
		token: DSClientSettings discordClientToken;
		with: [ :theClient | 
			theClient announcer 
				subscribe: DSAuthenticatedAnnouncement 
				do: [ :announcement | DSClientSettings storeDiscordClientToken: theClient token ] ];
		yourself.