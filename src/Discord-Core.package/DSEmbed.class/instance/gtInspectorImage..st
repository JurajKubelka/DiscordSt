gt-inspector-extension
gtInspectorImage: composite
	<gtInspectorPresentationOrder: 2>
	^ composite morph
		title: 'Image';
		display: [ self image asForm ];
		when: [ self hasImage ];
		yourself