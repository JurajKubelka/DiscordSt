gt-inspector-extension
gtInspectorEmbedImage: composite
	<gtInspectorPresentationOrder: 1.2>
	^ composite morph
		title: 'Image';
		display: [ self embedImages first asForm ];
		when: [ self hasEmbedImages ];
		yourself