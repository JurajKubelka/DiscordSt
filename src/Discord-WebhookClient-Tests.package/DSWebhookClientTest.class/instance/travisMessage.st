accessing
travisMessage
	"Message send to a Discord channel from Travis-CI.org"
	^ Smalltalk os environment
		at: 'TRAVIS' 
		ifPresent: [ :string | | jobNumber osName jobId repoSlug |
			osName := Smalltalk os environment at: 'TRAVIS_OS_NAME' ifAbsent: [ '<unknown os name>' ].
			jobNumber := Smalltalk os environment at: 'TRAVIS_JOB_NUMBER' ifAbsent: [ '<unknown job number>' ].
			jobId := Smalltalk os environment at: 'TRAVIS_JOB_ID' ifAbsent: [ '<unknown job id>' ].
			repoSlug := Smalltalk os environment at: 'TRAVIS_REPO_SLUG' ifAbsent: [ 'JurajKubelka/DiscordSt' ].
			'[Travis-CI.org](https://travis-ci.org/JurajKubelka/DiscordSt) message on ', osName asString, 
			', [job ', jobNumber asString, '](https://travis-ci.org/', repoSlug asString, '/jobs/', jobId asString, ').' ]
		ifAbsent: nil.