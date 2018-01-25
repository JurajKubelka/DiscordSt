as yet unclassified
gtInspectorMembers: composite
	<gtInspectorPresentationOrder: 2>
	^ composite fastTree
		title: [ 'Members' translated ];
		display: [ self members ];
		when: [ self hasMembers or: [ self isAuthenticated ] ];
		children: [ :item | item members ];
		yourself