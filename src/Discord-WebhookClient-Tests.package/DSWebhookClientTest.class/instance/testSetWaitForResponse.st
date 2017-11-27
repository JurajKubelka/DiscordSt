tests
testSetWaitForResponse
	client := self classToTest new url: self url.
	client setWaitForResponse.
	self assert: client url hasQuery.
	self assert: (client url queryAt: #wait) equals: 'true'.