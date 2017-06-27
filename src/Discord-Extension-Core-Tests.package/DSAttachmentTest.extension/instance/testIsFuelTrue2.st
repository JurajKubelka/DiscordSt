*Discord-Extension-Core-Tests
testIsFuelTrue2
	attachment := self newAttachment.
	attachment url: 'http://example.com/data.fuel?key=value'.
	self assert: attachment isFuel.