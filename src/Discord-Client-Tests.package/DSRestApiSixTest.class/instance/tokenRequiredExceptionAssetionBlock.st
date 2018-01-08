defaults
tokenRequiredExceptionAssetionBlock
	"Assertion block for token requiered exception"
	^ [ :exception | 
		self assert: exception class equals: DSTokenRequiredError ]