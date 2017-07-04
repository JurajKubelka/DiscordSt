test - protocol - basic
testChannel
	| channel |
	channel := DSGuildTextChannel new.
	builder := self newInstanceToBeTested 
		channel: channel;
		yourself.
	self assert: builder channel == channel.