test - protocol - basic
testChannel
	| channel |
	channel := DSTextChannel new.
	builder := self newInstanceToBeTested 
		channel: channel;
		yourself.
	self assert: builder channel == channel.