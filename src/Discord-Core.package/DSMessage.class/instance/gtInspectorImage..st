gt-inspector-extension
gtInspectorImage: composite
	<gtInspectorPresentationOrder: 1.1>
	^ composite morph
		title: 'Image';
		display: [ self imageAttachments first asForm ];
		when: [ self hasImageAttachments ];
		yourself