*Discord-Extension-Core-Tests
testIsFuelFalse3
	attachment := self newAttachment.
	attachment url: 'http://example.com/a'.
	self deny: attachment isFuel.