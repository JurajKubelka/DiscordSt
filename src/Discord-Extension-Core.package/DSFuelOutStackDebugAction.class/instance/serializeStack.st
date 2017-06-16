actions
serializeStack
	"Serialize a portion of the current stack trace using fuel.."
	DSSendStackCommand new 
		debugger: self debugger;
		forkedExecution