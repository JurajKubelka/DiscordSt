defaults
defaultProcessName
	"Return the process name used for the forked execution.
	See #forkedExecution method."
	^ String streamContents: [ :aStream |
		aStream << self className << ': a Discord command' ].
