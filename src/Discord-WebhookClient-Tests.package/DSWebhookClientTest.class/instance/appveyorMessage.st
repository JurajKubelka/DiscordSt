accessing
appveyorMessage
	"Message send to a Discord channel from Appveyor.com"
	Smalltalk os environment
		at: 'APPVEYOR' 
		ifPresent: [ :string | | jobId repoSlug |
			jobId := Smalltalk os environment at: 'APPVEYOR_BUILD_VERSION' ifAbsent: [ '<unknown job id>' ].
			repoSlug := Smalltalk os environment at: 'APPVEYOR_PROJECT_SLUG' ifAbsent: [ 'JurajKubelka/DiscordSt' ].
			'[Appveyor.com](https://ci.appveyor.com/project/JurajKubelka/discordst) message ', 
			', [job ', jobId asString, '](https://ci.appveyor.com/project/', repoSlug asString, '/build/', jobId asString, ').' ]
		ifAbsent: nil.