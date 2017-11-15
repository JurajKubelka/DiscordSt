defaults
unauthorizedExceptionAssetionBlock
	"Assertion block for unauthorized exception"
	^ [ :exception | 
	self assert: exception response notNil.
	self assert: exception response code = 401.
	self
		assert: exception response contents
		equals: '{"code": 0, "message": "401: Unauthorized"}' ]