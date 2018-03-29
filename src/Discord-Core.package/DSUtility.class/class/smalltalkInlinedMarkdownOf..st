markdown
smalltalkInlinedMarkdownOf: aString
	"Return inlined Markdown representation of a string. 
	The string is supposed to be a one-line Smalltalk code snippet."
	<return: #String>
	^ String streamContents: [ :aStream | 
			aStream 
				nextPutAll: '`'; 
				nextPutAll: aString trimBoth;
				nextPutAll: '`' ].