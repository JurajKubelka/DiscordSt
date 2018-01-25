accessing - computed
markdown
	"Return Markdown representation of a Playground code snippet"
	<return: #String>
	^ String streamContents: [ :aStream | 
			aStream 
				nextPutAll: '```Smalltalk'; cr; 
				nextPutAll: self codeSnippet trimBoth; cr; 
				nextPutAll: '```'; cr ].