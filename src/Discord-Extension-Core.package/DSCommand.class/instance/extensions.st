accessing
extensions
	"Get command extensions.
	Added command extensions are executed in pre- and post- execution cycles."
	extensions ifNil: [ self extensions: self allAvailableExtensions ].
	^ extensions