accessing
gtMessagesFor: aView
	<gtView>
	^ aView columnedList 
		title: 'Messages';
		items: [ self ];
		priority: 1;
		column: 'Time' 
			item: [ :aMessage | aMessage timestamp ] 
			format: [ :aTimestamp | self printShortTime: aTimestamp ]
			width: 80;
		column: 'Author'
			item: [ :aMessage | aMessage username ]
			width: 80;
		column: '#Attach'
			item: [ :aMessage | aMessage numberOfAttachments ]
			width: 80;
		column: '#Embeds'
			item: [ :message | message numberOfEmbeds ]
			width: 80;
		column: 'Content'
			evaluated: [ :message | message printFullMessage asString ];
		yourself