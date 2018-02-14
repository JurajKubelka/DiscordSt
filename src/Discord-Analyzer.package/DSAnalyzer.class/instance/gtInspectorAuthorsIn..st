gt-inspector-extension
gtInspectorAuthorsIn: composite
	<gtInspectorPresentationOrder: 3>
	^ composite fastTable 
		title: [ 'Authors' ];
		display: [ self messagesPerAuthor associations ];
		when: [ self messages notEmpty ];
		column: 'Name' 
			evaluated: [ :assoc | assoc key username ]
			width: 120
			tags: { }
			sortedBy: [ :a :b | a key username > b key username ];
		column: '#Messages'
			evaluated: [ :assoc | assoc value size ]
			width: 80
			tags: { }
			sortedBy: [ :a :b | a value size > b value size ];
		column: '#Attachments'
			evaluated: [ :assoc | assoc value sum: #numberOfAttachments ]
			width: 85
			tags: {  }
			sortedBy: [ :a :b | 
				(a value sum: #numberOfAttachments) > (b value sum: #numberOfAttachments) ];
		column: '#CodeSnippets'
			evaluated: [ :assoc | self numberOfCodeSnippets: assoc value ]
			width: 100
			tags: {  }
			sortedBy: [ :a :b | 
				(self numberOfCodeSnippets: a value) > (self numberOfCodeSnippets: b value) ];
		column: '#Questions'
			evaluated: [ :assoc | self numberOfQuestions: assoc value ]
			width: 80
			tags: {  }
			sortedBy: [ :a :b | 
				(self numberOfQuestions: a value) > (self numberOfQuestions: b value) ];
		selectionPopulate: #selection 
			entitled: 'Browse Attachments'
			with: [ :table | 
				(self selectAttachments: table rawSelection value)
					gtInspectorInterestingObject ];
		selectionPopulate: #selection 
			entitled: 'Browse Code Snippets'
			with: [ :table | 
				(self selectCodeSnippets: table rawSelection value)
					gtInspectorInterestingObject ];
		selectionPopulate: #selection 
			entitled: 'Browse Questions'
			with: [ :table | 
				(self selectQuestions: table rawSelection value)
					gtInspectorInterestingObject ];
"		column: '#Embeds'
			evaluated: [ :message | message numberOfEmbeds ]
			width: 90
			tags: [ :message | Array streamContents: [ :aStream |
				message isFuelObject ifTrue: [ 
					aStream nextPut: 'Object' ].
				message isFuelStack ifTrue: [ 
					aStream nextPut: 'Stack' ].
				message isFuelPlayground ifTrue: [ 
					aStream nextPut: 'Playground' ].
				message hasEmbedImages ifTrue: [ 
					aStream nextPut: 'Img' ] ] ]
			sortedBy: [ :a :b | a numberOfEmbeds > b numberOfEmbeds ];
		column: 'Content'
			evaluated: [ :message | message printFullMessage ];"
		send: #value;
		yourself
