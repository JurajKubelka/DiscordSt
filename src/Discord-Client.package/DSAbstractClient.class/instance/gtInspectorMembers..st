as yet unclassified
gtInspectorMembers: composite
	<gtInspectorPresentationOrder: 2>
	^ composite fastTree
		title: [ 'Members' translated ];
		display: [ self servers ];
		when: [ self isAuthenticated ];
		children: [ :item | item members ];
		expandedUntil: 0;
		yourself