private
ensureVolatileDiscordClientPassword
	DSClientPassword ifNil: [ 
		DSClientPassword := AutoReloadableVolatileSystemSetting new
			settingId: #discordClientPassword;
			string: '';
			yourself ]