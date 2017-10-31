*Discord-UI-Bloc
gtInspectorMessagesBloc: composite
	<gtInspectorPresentationOrder: -1>
	^ composite bloc 
		title: [ 'Messages (Bloc)' ];
		display: [ BlInfiniteElement new
				layout: BlInfiniteLinearLayout vertical;
				dataSource: (DSMessagesDataSource new messages: self; yourself);
				constraintsDo: [ :c |
					c horizontal matchParent.
					c vertical matchParent ];
				yourself ];
		when: [ self notEmpty ];
		yourself