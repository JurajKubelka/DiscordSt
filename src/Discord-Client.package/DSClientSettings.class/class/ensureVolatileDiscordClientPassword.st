private
ensureVolatileDiscordClientPassword
	DSClientPassword ifNil: [ 
		DSClientPassword := AutoReloadableVolatileSystemSetting
				fromString: ''
				settingId: #discordClientPassword ]