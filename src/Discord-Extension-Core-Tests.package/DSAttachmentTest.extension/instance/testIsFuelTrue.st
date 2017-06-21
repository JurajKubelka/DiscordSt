*Discord-Extension-Core-Tests
testIsFuelTrue
	attachment := self newAttachment.
	attachment url: 'http://example.com/data.fuel'.
	self assert: attachment isFuel.