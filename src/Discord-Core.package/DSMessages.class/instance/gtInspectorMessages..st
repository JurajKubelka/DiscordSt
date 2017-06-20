gt-inspector-extension
gtInspectorMessages: composite
	<gtInspectorPresentationOrder: -2>
	^ composite fastTable 
		title: [ 'Messages' ];
		display: [ self ];
		when: [ self notEmpty ];
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
			width: 60
			tags: { }
			sortedBy: [ :a :b | a numberOfAttachments > b numberOfAttachments ];
		column: '#Embeds'
			evaluated: [ :message | message numberOfEmbeds ]
			width: 60
			tags: { }
			sortedBy: [ :a :b | a numberOfEmbeds > b numberOfEmbeds ];
		column: 'Content'
			evaluated: [ :message | message content ];
		yourself