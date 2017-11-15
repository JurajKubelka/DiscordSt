*Discord-Extension-Core-Tests
testIsFuelFalse4
	attachment := self newAttachment.
	attachment url: 'a'.
	self deny: attachment isFuel.