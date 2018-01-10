gt-inspector-extension
gtInspectorMembers: composite
	<gtInspectorPresentationOrder: 2>
	^ composite fastTree
		title: [ 'Members' translated ];
		display: [ self guilds ];
		when: [ self guilds notEmpty ];
		children: [ :item | item members ];
		expandedUntil: 0;
		yourself