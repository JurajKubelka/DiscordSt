execute
forkedExecution
	"Execute the command in a forked process.
	It is recommended to use this method from UIs (buttons)."
	[ self execute ]
	forkAt: self defaultProcessPriority
	named: self defaultProcessName.