*Discord-Extension-Core-Tests
testIsFuelFalse2
	attachment := self newAttachment.
	attachment url: 'http://example.com/'.
	self deny: attachment isFuel.