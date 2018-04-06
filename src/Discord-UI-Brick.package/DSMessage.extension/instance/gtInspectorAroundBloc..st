*Discord-UI-Brick
gtInspectorAroundBloc: composite
	<gtInspectorPresentationOrder: 6>
	^ composite bloc 
		title: [ 'Around (Bloc)' ];
		display: [ | messagesAround |
			messagesAround := self restApi messagesAround: self.
			DSMessagesElement new
				dataSource: (DSMessagesDataSource new messages: messagesAround; yourself);
				yourself ];
		yourself