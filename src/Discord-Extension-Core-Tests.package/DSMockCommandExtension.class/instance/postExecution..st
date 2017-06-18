execution
postExecution: aDSMockCommand 
	"Post-execution preparation.
	Let's call the postExecutionBlock that should be set before this call."
	postExecutionBlock cull: aDSMockCommand cull: self.