as yet unclassified
defaultProcessName
	"Return the process name used for the forked execution.
	See #execute method."
	^ String streamContents: [ :aStream |
		aStream << self className << ' on ' << self command className << ' (a Discord command)' ].