enumerating
selectQuestions: aDSMessages 
	<return: #DSMessages>
	^ aDSMessages select: [ :message | 
		message printFullMessage includesSubstring: '?' ]