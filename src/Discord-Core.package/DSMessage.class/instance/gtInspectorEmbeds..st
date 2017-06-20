as yet unclassified
gtInspectorEmbeds: composite
	<gtInspectorPresentationOrder: 1.5>
	^ composite fastList
		title: 'Embeds';
		display: [ self embeds ];
		when: [ self hasEmbeds ];
		yourself