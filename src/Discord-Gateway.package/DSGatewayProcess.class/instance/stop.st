public
stop
	"Stop a process if not active yet."
	^ mutex critical: [ 
		self disableNextCycle.
		"Stop process if possible."
		self stopProcess.
		process ]