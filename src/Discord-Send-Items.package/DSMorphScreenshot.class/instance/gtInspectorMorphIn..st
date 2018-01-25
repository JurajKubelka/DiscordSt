gt-inspector-extension
gtInspectorMorphIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite morph
		title: [ 'Morph' translated ];
		display: [ self morph imageForm ];
		when: [ self morph notNil ];
		yourself