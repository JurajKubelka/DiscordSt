as yet unclassified
asyncPost
	"Execute the post action in a forked process."
	[ self post ] 
		forkAt: Processor userBackgroundPriority 
		named: 'Discord Webhook Post Process'