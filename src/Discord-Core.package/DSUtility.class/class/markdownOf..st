markdown
markdownOf: aString
	"Return Markdown representation of a string."
	<return: #String>
	^ String streamContents: [ :aStream | 
			aStream 
				nextPutAll: '```'; cr; 
				nextPutAll: aString trimBoth; cr;
				nextPutAll: '```'; cr ].