tests
testScreenshot
	| screenshot |
	morph := self classToTest new.
	screenshot := Morph new.
	morph screenshot: screenshot.
	self assert: morph screenshot == screenshot.