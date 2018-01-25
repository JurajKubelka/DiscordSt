gt-inspector-extension
gtInspectorMembers: composite
	<gtInspectorPresentationOrder: -9>
	^ composite fastTree
		title: [ 'Members' translated ];
		display: [ self ];
		when: [ self notEmpty ];
		children: [ :item | item members ];
		expandedUntil: 0;
		yourself