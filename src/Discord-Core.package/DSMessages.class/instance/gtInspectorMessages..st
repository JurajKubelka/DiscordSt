gt-inspector-extension
gtInspectorMessages: composite
	<gtInspectorPresentationOrder: -2>
	^ composite fastTable 
		title: [ 'Messages' ];
		display: [ self ];
		when: [ self notEmpty ];
		beMultiple;
		column: 'Time' 
			evaluated: [ :message | self printShortTime: message timestamp ]
			width: 80
			tags: { }
			sortedBy: [ :a :b | a timestamp > b timestamp ];
		column: 'Author'
			evaluated: [ :message | message author ifNotNil: #username ]
			width: 100;
		column: '#Attach'
			evaluated: [ :message | message numberOfAttachments ]
			width: 80
			tags: [  :message | Array streamContents: [ :aStream |
				message hasFuelAttachments ifTrue: [ 
					aStream nextPut: 'Fuel' ].
				message hasImageAttachments ifTrue: [ 
					aStream nextPut: 'Img' ] ]  ]
			sortedBy: [ :a :b | a numberOfAttachments > b numberOfAttachments ];
		column: '#Embeds'
			evaluated: [ :message | message numberOfEmbeds ]
			width: 90
			tags: [ :message | Array streamContents: [ :aStream |
"				message isFuelObject ifTrue: [ 
					aStream nextPut: 'Object' ].
				message isFuelStack ifTrue: [ 
					aStream nextPut: 'Stack' ].
				message isFuelPlayground ifTrue: [ 
					aStream nextPut: 'Playground' ]."
				message hasEmbedImages ifTrue: [ 
					aStream nextPut: 'Img' ] ] ]
			sortedBy: [ :a :b | a numberOfEmbeds > b numberOfEmbeds ];
		column: 'Content'
			evaluated: [ :message | 
				Text streamContents: [ :aStream | message printFullMessageOn: aStream ] limitedTo: 80 ];
		sendOneOrMultipleAs: self species;
		yourself