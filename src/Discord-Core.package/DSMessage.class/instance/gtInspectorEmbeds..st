gt-inspector-extension
gtInspectorEmbeds: composite
	<gtInspectorPresentationOrder: 1.5>
	^ composite fastList
		title: 'Embeds';
		display: [ self embeds ];
		when: [ self hasEmbeds ];
		yourself