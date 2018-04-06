*Discord-UI-Brick
gtInspectorAroundBloc: composite
	<gtInspectorPresentationOrder: 6>
	^ composite bloc 
		title: [ 'Around (Bloc)' ];
		display: [ | messagesAround |
			messagesAround := (self restApi messagesAround: self) sort: [ :a :b | a id < b id ].
			DSMessagesElement new
				dataSource: (DSMessagesDataSource new messages: messagesAround; yourself);
				yourself ];
		yourself