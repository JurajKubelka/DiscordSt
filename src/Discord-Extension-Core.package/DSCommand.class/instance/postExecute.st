private
postExecute
	"Execute all registered extensions in post-execution cycle."
	self hasExtensions ifFalse: [ ^ self ].
	self extensions do: [ :eachExtension | 
		eachExtension postExecution: self ]