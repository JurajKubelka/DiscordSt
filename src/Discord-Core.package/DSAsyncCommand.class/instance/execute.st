execute
execute
	"Execute the command in a forked process.
	It is recommended to use this method from UIs (buttons)."
	self assert: [ self command notNil ] description: 'Command has to be initialized before execution.'.

	[ self executeCommand ]
		forkAt: self defaultProcessPriority
		named: self defaultProcessName.