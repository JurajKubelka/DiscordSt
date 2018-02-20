actions
updateDiscordSt
	(FileLocator workingDirectory / 'github-cache' / 'JurajKubelka' / 'DiscordSt') ensureDeleteAll.
	Gofer new 
		url: 'github://JurajKubelka/DiscordSt:dev/src';
		package: 'BaselineOfDiscordSt';
		load.
	Metacello new
	    baseline: #DiscordSt;
	    repository: 'github://JurajKubelka/DiscordSt:dev/src';
	    load: #default.

