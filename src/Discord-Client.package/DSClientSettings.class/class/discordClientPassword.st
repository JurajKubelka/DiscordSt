accessing
discordClientPassword
	^ DSClientPassword ifNil: [ DSClientPassword := '' ]