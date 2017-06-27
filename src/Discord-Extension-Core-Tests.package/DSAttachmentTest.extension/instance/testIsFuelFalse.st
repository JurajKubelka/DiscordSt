*Discord-Extension-Core-Tests
testIsFuelFalse
	attachment := self newAttachment.
	attachment url: 'http://example.com/data.fuel.txt'.
	self deny: attachment isFuel.