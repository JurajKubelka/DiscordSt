private
ensureVolatileDiscordClientToken
	DSClientToken ifNil: [ 
		DSClientToken := AutoReloadableVolatileSystemSetting
				fromString: ''
				settingId: #discordClientToken ]