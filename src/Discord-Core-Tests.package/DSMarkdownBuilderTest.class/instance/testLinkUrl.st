tests
testLinkUrl
	| result |
	builder := self classToTest new.
	builder link: 'Pharo' url: 'http://pharo.org'.
	result := builder build.
	self assert: result equals: '[Pharo](http://pharo.org)'.