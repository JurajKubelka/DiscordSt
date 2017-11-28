as yet unclassified
gtInspectorTreeIn: composite
	<gtInspectorPresentationOrder: -1>
	^ composite fastTree
			title: [ 'Tree' translated ];
			display: [ self ];
			children: [ :item | item children ];
			expandedUntil: 1;
			yourself