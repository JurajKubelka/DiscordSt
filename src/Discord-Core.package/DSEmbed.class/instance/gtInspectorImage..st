gt-inspector-extension
gtInspectorImage: composite
	<gtInspectorPresentationOrder: 2>
	^ composite morph
		title: [ 'Image' translated ];
		display: [ self image ifNotNil: #asForm ];
		when: [ self hasImage ];
		yourself