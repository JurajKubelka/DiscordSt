*Discord-UI-Bloc
gtInspectorMessagesBloc: composite
	<gtInspectorPresentationOrder: -1>
	^ composite bloc 
		title: [ 'Messages (Bloc)' ];
		display: [ BlElement new
				layout: BlLinearLayout vertical;
				constraintsDo: [ :c |
					c horizontal matchParent.
					c vertical matchParent ];
				addChildren: (self collect: [ :eachMessage | 
					DSMessageElement new
						message: eachMessage;
						yourself ])
				yourself ];
		when: [ self notEmpty ];
		yourself