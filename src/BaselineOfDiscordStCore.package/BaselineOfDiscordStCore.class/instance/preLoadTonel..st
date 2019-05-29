actions
preLoadTonel: aSpecLoader
	"Load the Tonel project if not present. Useful for Pharo 6.0, exluding Pharo 6.1"
	SystemVersion current highestUpdate > 60000 ifFalse: [ ^ self ].
	#TonelWriter asClassIfPresent: [ ^ self ].
	Metacello new 
		repository: 'github://pharo-vcs/tonel';
		baseline: 'Tonel';
		load.