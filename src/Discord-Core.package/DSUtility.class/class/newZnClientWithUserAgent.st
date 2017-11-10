instance creation
newZnClientWithUserAgent
	"Return new object with correct User Agent.
	See https://discordapp.com/developers/docs/reference#user-agent"
	^ self newZnClient
		headerAt: 'User-Agent' put: DSConstants userAgent;
		yourself