private
ensureVolatileDiscordClientToken
	DSClientToken ifNil: [ 
		DSClientToken := AutoReloadableVolatileSettingValue new
			settingId: #discordClientToken;
			string: '';
			yourself ]