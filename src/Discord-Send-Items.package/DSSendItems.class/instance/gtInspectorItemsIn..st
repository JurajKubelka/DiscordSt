gt-inspector-extension
gtInspectorItemsIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastTree
		title: [ 'Items' translated ];
		display: [ self collection ];
		when: [ self collection notEmpty ];
		children: [ :each | each children ];
		expandedUntil: 2;
		yourself