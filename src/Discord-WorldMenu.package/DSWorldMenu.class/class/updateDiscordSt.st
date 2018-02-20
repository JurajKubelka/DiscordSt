actions
updateDiscordSt
	UIManager default
		informUserDuring: [ :bar | 
			bar label: 'Removing cached DiscordSt repository from github-cache'.
			bar current: 0.
			(FileLocator workingDirectory / 'github-cache' / 'JurajKubelka' / 'DiscordSt')
				ensureDeleteAll.
			bar label: 'Updating DiscordSt baseline definition'.
			bar current: 0.33.
			Iceberg enableMetacelloIntegration ifFalse: [ 
				Gofer new 
					url: 'github://JurajKubelka/DiscordSt:dev/src';
					package: 'BaselineOfDiscordSt';
					load ].
			bar label: 'Updating DiscordSt source files'.
			bar current: 0.66.
			Metacello new
			    baseline: #DiscordSt;
			    repository: 'github://JurajKubelka/DiscordSt:dev/src';
			    load: #default.
			bar current: 1 ].