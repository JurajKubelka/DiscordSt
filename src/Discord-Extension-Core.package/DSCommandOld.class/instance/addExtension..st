adding
addExtension: aDSCommandExtension 
	"Add a command extension to the internal collection.
	Added command extensions are executed in pre- and post- execution cycles."
	extensions 
		ifNil: [ self extensions: (Array with: aDSCommandExtension) ]
		ifNotNil: [ self extensions: (self extensions copyWith: aDSCommandExtension) ].
	^ aDSCommandExtension