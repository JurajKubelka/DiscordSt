gt-inspector-extension
gtInspectorServers: composite
	<gtInspectorPresentationOrder: -10>
	^ composite fastTree
		title: [ 'Servers' translated ];
		display: [ self ];
		when: [ self notEmpty ];
		children: [ :item | item children ];
		expandedUntil: 1;
		yourself