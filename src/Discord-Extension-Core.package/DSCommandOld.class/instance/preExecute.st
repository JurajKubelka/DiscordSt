private
preExecute
	"Execute all registered extensions in pre-execution cycle."
	self hasExtensions ifFalse: [ ^ self ].
	self extensions do: [ :eachExtension | 
		eachExtension preExecution: self ] 