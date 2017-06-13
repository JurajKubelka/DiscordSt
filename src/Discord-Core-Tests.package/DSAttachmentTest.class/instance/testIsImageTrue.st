tests
testIsImageTrue
	attachment := self newAttachment.
	attachment width: 42; height: 42.
	self assert: attachment isImage.