gt-inspector-extension
gtInspectorItemsIn: composite
	<gtInspectorPresentationOrder: 0>
	^ composite fastList
			title: [ 'Items' translated ];
			display: [ self items collection ];
			when: [ self items isEmptyOrNil not ];
			yourself