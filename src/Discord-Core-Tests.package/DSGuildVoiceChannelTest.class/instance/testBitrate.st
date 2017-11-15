tests
testBitrate
	channel := self newChannel.
	channel bitrate: 1234.
	self assert: channel bitrate equals: 1234.