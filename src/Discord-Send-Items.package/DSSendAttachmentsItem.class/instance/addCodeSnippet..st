adding
addCodeSnippet: aString 
	^ self add: (DSSendCodeSnippetAttachment new codeSnippet: aString; yourself)