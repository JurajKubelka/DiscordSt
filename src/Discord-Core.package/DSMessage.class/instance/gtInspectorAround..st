gt-inspector-extension
gtInspectorAround: composite
	<gtInspectorPresentationOrder: 5>
	^ composite fastTable 
		title: [ 'Around' ];
		display: [ (self restApi messagesAround: self) sort: [ :a :b | a id < b id ] ];
		when: [ self restApi isAuthenticated ];
		column: 'Time' 
			evaluated: [ :message | DSUtility printShortTime: message timestamp ]
			width: 80
			tags: { }
			sortedBy: [ :a :b | a timestamp > b timestamp ];
		column: 'Author'
			evaluated: [ :message | | userNameString |
				userNameString := message author ifNotNil: #username.
				self id = message id
					ifTrue: [ Text string: userNameString attribute: TextColor blue ]
					ifFalse: [ userNameString ] ]
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
				message sentFromDiscordSt ifTrue: [ 
					aStream nextPut: 'dSt' ].
				message hasEmbedImages ifTrue: [ 
					aStream nextPut: 'Img' ] ] ]
			sortedBy: [ :a :b | a numberOfEmbeds > b numberOfEmbeds ];
		column: 'Content'
			evaluated: [ :message |  message printFullMessage asString printStringLimitedTo: 40 ];
		yourself