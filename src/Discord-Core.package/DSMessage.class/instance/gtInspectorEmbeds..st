gt-inspector-extension
gtInspectorEmbeds: composite
	<gtInspectorPresentationOrder: 3>
	^ composite fastList
		title: 'Embeds';
		display: [ self embeds ];
		when: [ self hasEmbeds ];
		yourself