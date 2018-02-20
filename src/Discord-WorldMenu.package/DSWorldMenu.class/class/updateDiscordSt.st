actions
updateDiscordSt
	UIManager default
		informUserDuring: [ :bar | 
			bar label: 'Removing cached DiscordSt repository from github-cache'.
			bar current: 0.
			(FileLocator workingDirectory / 'github-cache' / 'JurajKubelka' / 'DiscordSt')
				ensureDeleteAll.
			"bar label: 'Ensuring fixed Metacello for Pharo 6.0'.	
			bar current: 0.16.
			#MetacelloCypressBaselineProject asClassIfAbsent: [
				Metacello new 
					baseline: 'Metacello'; 
 					repository: 'github://dalehenrich/metacello-work:master/repository'; 
  					get. 
				Metacello new
					baseline: 'Metacello'; 
					repository: 'github://dalehenrich/metacello-work:master/repository'; 
					onConflict: [:ex | ex allow]; 
					load ]. "
			bar label: 'Updating DiscordSt baseline definition'.
			bar current: 0.33.
			Iceberg enableMetacelloIntegration ifFalse: [ 
				Gofer new 
					url: 'github://JurajKubelka/DiscordSt:dev/src' asZnUrl;
					package: 'BaselineOfDiscordSt';
					load ].
			bar label: 'Updating DiscordSt source files'.
			bar current: 0.66.
			Metacello new
				baseline: #DiscordSt;
				repository: 'github://JurajKubelka/DiscordSt:dev/src';
				onConflict: [:ex | ex allow]; 
				load: #default.
			bar current: 1 ].