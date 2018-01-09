tests - public - user
testMeTokenRequiered
	restApi := self newRestApi.
	self
		should: [ restApi me ]
		raise: DSTokenRequiredError
		withExceptionDo: self tokenRequiredExceptionAssetionBlock.
