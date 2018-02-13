gt-inspector-extension
gtInspectorServers: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastTree
		title: [ 'Servers' translated ];
		display: [ self guilds ];
		when: [ self guilds notEmpty ];
		children: [ :item | item children ];
		expandedUntil: 1;
		yourself