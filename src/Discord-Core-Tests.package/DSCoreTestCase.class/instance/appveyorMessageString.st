accessing
appveyorMessageString
	"Message sent to a Discord channel from Appveyor.com"
	^ Smalltalk os environment
		at: 'APPVEYOR' 
		ifPresent: [ :string | | jobId accountName repoSlug |
			jobId := Smalltalk os environment at: 'APPVEYOR_BUILD_VERSION' ifAbsent: [ '<unknown job id>' ].
			accountName := Smalltalk os environment at: 'APPVEYOR_ACCOUNT_NAME' ifAbsent: [ 'JurajKubelka/DiscordSt' ].
			repoSlug := Smalltalk os environment at: 'APPVEYOR_PROJECT_SLUG' ifAbsent: [ 'JurajKubelka/DiscordSt' ].
			String streamContents: [ :stream |
				stream 
					<< '[Appveyor.com](https://ci.appveyor.com/project/JurajKubelka/discordst) message'
					<< 	', [job ' << jobId asString << '](https://ci.appveyor.com/project/'
					<< accountName asString << '/' << repoSlug asString
					<< '/build/' << jobId asString << '). '
					<< self classAndTestSelectorMessageString ] ]
		ifAbsent: nil.