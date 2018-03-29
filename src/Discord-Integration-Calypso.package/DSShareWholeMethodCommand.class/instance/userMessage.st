accessing
userMessage
	<return: #String>
	^ String streamContents: [ :aStream | 
		aStream
			cr; 
			nextPutAll: (DSUtility smalltalkMarkdownOf: self method methodClass name asString, ' >> ', self method sourceCode) ]