private
ensureVolatileDiscordClientPassword
	DSClientPassword ifNil: [ 
		DSClientPassword := AutoReloadableVolatileSettingValue new
			settingId: #discordClientPassword;
			string: '';
			yourself ]