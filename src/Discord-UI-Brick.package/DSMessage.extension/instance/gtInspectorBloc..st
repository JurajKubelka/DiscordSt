*Discord-UI-Brick
gtInspectorBloc: composite
	<gtInspectorPresentationOrder: 0>
	^ composite bloc
		title: [ 'Bloc' translated ];
		display: [ DSMessageElement new message: self; yourself ];
		when: [ self hasContent or: [ self hasEmbeds ] ];
		yourself