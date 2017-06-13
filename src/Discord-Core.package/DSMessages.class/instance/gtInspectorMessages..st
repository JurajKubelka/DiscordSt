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
			evaluated: [ :message | message attachments size ]
			width: 60
			tags: { }
			sortedBy: [ :a :b | a attachments size > b attachments size ];
		column: 'Content'
			evaluated: [ :message | message content ];
		yourself