gt-inspector-extension
gtInspectorItemsIn: composite
	<gtInspectorPresentationOrder: 0>
	^ composite fastTree
			title: [ 'Items' translated ];
			display: [ self items collection ];
			when: [ self items isEmptyOrNil not ];
			children: [ :each | each children ];
			expandedUntil: 2;
			yourself