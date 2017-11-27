tests
testWaitForResponse
	client := self classToTest new url: self url.
	self assert: client url hasQuery.
	self assert: (client url queryAt: #wait) equals: 'false'.