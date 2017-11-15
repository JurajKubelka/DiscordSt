gt-inspector-extension
gtInspectorServers: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastTree
		title: 'Servers';
		display: [ self servers ];
		when: [ self isAuthenticated ];
		children: [ :item | item children ];
		expandedUntil: 1;
		yourself