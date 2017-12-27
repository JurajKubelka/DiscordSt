gt-extension
gtInspectorTreeIn: composite
	<gtInspectorPresentationOrder: -1>
	^ composite fastTree
			title: [ 'Tree' translated ];
			display: [ self packages ];
			children: [ :item | item children ];
			expandedUntil: 1;
			yourself