markdown
smalltalkMarkdownOf: aString
	"Return Markdown representation of a string. 
	The string is supposed to be a Smalltalk code snippet."
	<return: #String>
	^ String streamContents: [ :aStream | 
			aStream 
				nextPutAll: '```Smalltalk'; cr; 
				nextPutAll: aString trimBoth; cr;
				nextPutAll: '```'; cr ].