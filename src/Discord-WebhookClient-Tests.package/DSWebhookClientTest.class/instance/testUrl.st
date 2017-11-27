tests
testUrl
	client := self classToTest new url: self url.
	self assert: client url equals: self url asZnUrl ? ('wait' -> false).