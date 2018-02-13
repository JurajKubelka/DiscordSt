enumerating
selectCodeSnippets: aDSMessages
	<return: #DSMessages> 
	^ aDSMessages select: [ :message | 
		message printFullMessage includesSubstring: '```' ]
