as yet unclassified
gtInspectorContent: composite
	<gtInspectorPresentationOrder: 1>
	^ composite text
		title: 'Content';
		display: [ self content ];
		when: [ self hasContent ];
		yourself