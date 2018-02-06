gt-inspector-extension
gtInspectorObjectTreeIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastTree
		title: [ 'Tree' translated ];
		display: [ self gtChildren ];
		when: [ self gtChildren notEmpty ];
		children: [ :item | item gtChildren ];
		expandedUntil: self gtTreeExpandedUntil;
		yourself