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
			width: 80
			tags: {  }
			sortedBy: [ :a :b | 
				(a value sum: #numberOfAttachments) > (b value sum: #numberOfAttachments) ];
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