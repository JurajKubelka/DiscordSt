private
ensureVolatileDiscordClientToken
	DSClientToken ifNil: [ 
		DSClientToken := AutoReloadableVolatileSystemSetting new
			settingId: #discordClientToken;
			string: '';
			yourself ]