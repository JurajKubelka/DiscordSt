actions
serializeStack
	"Serialize a portion of the current stack trace using fuel.."
	DSSendStackCommand new 
		client: DSClient default;
		debugger: self debugger;
		forkedExecution