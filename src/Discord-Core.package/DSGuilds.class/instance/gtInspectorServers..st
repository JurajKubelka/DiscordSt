as yet unclassified
gtInspectorServers: composite
	<gtInspectorPresentationOrder: -1>
	^ composite fastTree
		title: [ 'Servers' translated ];
		display: [ self ];
		when: [ self isAuthenticated ];
		children: [ :item | item children ];
		expandedUntil: 1;
		yourself