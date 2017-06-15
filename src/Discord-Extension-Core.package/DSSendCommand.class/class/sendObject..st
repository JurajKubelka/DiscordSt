public
sendObject: anObject
	"Send an object to a Discord channel using FUEL serialization.
	It is send in a forked process. 
	It is recommended to use this method from UIs (buttons)."
	[ self object: anObject ]
	forkAt: Processor userBackgroundPriority 
	named: 'DSSendCommand: sending a message to the Discord server'.