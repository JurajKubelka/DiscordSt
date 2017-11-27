protocol - sending
asyncSend
	"Execute the post action in a forked process."
	[ self send ] 
		forkAt: Processor userBackgroundPriority 
		named: 'Discord Message Send Process'