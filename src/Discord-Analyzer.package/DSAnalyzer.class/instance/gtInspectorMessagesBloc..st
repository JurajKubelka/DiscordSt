gt-inspector-extension
gtInspectorMessagesBloc: composite
	<gtInspectorPresentationOrder: -1>
	^ composite bloc 
		title: [ 'Messages (Bloc)' ];
		display: [ DSMessagesElement new
				dataSource: (DSMessagesDataSource new messages: self messages; yourself);
				yourself ];
		when: [ self messages notEmpty ];
		yourself