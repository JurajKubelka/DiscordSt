gt-inspector-extension
gtInspectorCollectionIn: composite
	<gtInspectorPresentationOrder: 2>
	^ composite fastList
		title: [ 'List' translated ];
		display: [ self screenshots ];
		when: [ self screenshots notEmpty ];
		yourself