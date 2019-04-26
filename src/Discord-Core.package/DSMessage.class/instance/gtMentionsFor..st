accessing
gtMentionsFor: aView
	<gtView>
	self mentions ifEmpty: [ ^ aView empty ].
	^ aView columnedList
		title: 'Mentions';
		priority: 10;
		items: [ self mentions ];
		column: 'Name' item: [ :aUser | aUser username ];
		column: 'Id' item: [ :aUser | aUser id ]