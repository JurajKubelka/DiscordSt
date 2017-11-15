*Discord-Extension-Core-Tests
testIsFuelTrue3
	attachment := self newAttachment.
	attachment url: 'http://example.com/data.fuel#tag'.
	self assert: attachment isFuel.