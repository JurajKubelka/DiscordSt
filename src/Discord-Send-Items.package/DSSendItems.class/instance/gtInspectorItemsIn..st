gt-inspector-extension
gtInspectorItemsIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastList
		title: [ 'Items' translated ];
		display: [ self collection ];
		when: [ self collection notEmpty ];
		yourself