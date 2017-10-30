*Discord-UI-Bloc
gtInspectorBloc: composite
	<gtInspectorPresentationOrder: 0>
	^ composite bloc
		title: 'Bloc';
		display: [ DSMessageElement new message: self; yourself ];
		when: [ self hasContent or: [ self hasEmbeds ] ];
		yourself