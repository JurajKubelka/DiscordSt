*Discord-UI-Brick
gtInspectorMessagesBloc: composite
	<gtInspectorPresentationOrder: -1>
	^ composite bloc 
		title: [ 'Messages (Bloc)' ];
		display: [ DSMessagesElement new
				dataSource: (DSMessagesDataSource new messages: self; yourself);
				yourself ];
		when: [ self notEmpty ];
		yourself