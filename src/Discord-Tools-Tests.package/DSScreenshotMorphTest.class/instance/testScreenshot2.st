tests
testScreenshot2
	morph := self classToTest new.
	self should: [ morph screenshot: Object new ] raise: Error.