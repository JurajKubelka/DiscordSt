instance creation
newDefault
	DSClientSettings updateSettings.
	^ self new
		email: DSClientSettings cleanDiscordClientEmail;
		password: DSClientSettings cleanDiscordClientPassword;
		token: DSClientSettings cleanDiscordClientToken;
		with: [ :theClient | 
			theClient announcer
				when: DSAuthenticatedAnnouncement
				do:
					[ :announcement | DSClientSettings storeDiscordClientSession: theClient ] ];
		yourself