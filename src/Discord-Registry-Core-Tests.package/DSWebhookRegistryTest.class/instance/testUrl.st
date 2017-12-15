tests
testUrl
	| url |
	url := 'http://example.com'.
	registry := self classToTest new.
	registry url: url.
	self assert: registry url equals: url.