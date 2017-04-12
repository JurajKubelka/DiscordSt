tests
testUrl
	client := DSWebhookClient new url: self url.
	self assert: client url equals: self url asZnUrl ? ('wait' -> false).