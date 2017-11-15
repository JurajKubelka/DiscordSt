*Discord-Extension-Core-Tests
testIsFuelFalse5
	attachment := self newAttachment.
	attachment url: ''.
	self deny: attachment isFuel.