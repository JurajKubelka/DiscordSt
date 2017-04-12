tests
testUnSetWaitForResponse
	client := DSWebhookClient new url: self url.
	client unsetWaitForResponse.
	self assert: client url hasQuery.
	self assert: (client url queryAt: #wait) equals: 'false'.