accessing
discordClientEmail
	^ DSClientEmail ifNil: [ DSClientEmail := '' ]