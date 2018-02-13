analyzis
numberOfCodeSnippets: aDSMessages 
	^ aDSMessages count: [ :message | 
		message printFullMessage includesSubstring: '```' ]