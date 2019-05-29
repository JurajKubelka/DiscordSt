actions
preLoadPlayground: aSpecLoader
	"Load a patch to be able to extend GT-Playground with actions."

	| playgroundClass |
	SystemVersion current highestUpdate > 60000
		ifFalse: [ ^ self ].
	SystemVersion current highestUpdate < 70000
		ifFalse: [ ^ self ].
	playgroundClass := self class environment
		at: #GTPlayground
		ifAbsent: [ ^ self ].
	(playgroundClass canUnderstand: #playgroundActions)
		ifTrue: [ ^ self ].
	Gofer it
		smalltalkhubUser: 'Moose' project: 'GToolkit';
		package: 'GT-Playground';
		package: 'GT-Tests-Playground';
		load