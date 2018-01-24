accessing
discordClientToken
	^ DSClientToken ifNil: [ DSClientToken := '' ]