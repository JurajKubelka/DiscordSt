defaults
userAgent
	"Return a correct User Agent.
	See https://discordapp.com/developers/docs/reference#user-agent"
	^ 'DiscordSt (https://github.com/JurajKubelka/DiscordSt, ', 
		self versionString, '-', 
		SystemVersion current highestUpdate asString, ')'